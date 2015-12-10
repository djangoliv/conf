# -*- coding: utf-8 -*-
"""

bashrc => export PYTHONSTARTUP="/home/giorgis/.pythonrc.py"

This file is executed when the Python interactive shell is started if
$PYTHONSTARTUP is in your environment and points to this file. It's just
regular Python commands, so do what you will. Your ~/.inputrc file can greatly
complement this file.

"""

# Imports we need
import sys
import os
import readline, rlcompleter
import atexit
import pprint
from tempfile import mkstemp
from code import InteractiveConsole

# Imports we want
import pdb


# Enable a History
##################

HISTFILE="%s/.pyhistory" % os.environ["HOME"]

# Read the existing history if there is one
if os.path.exists(HISTFILE):
    readline.read_history_file(HISTFILE)

# Set maximum number of items that will be written to the history file
readline.set_history_length(300)

def savehist():
    readline.write_history_file(HISTFILE)

atexit.register(savehist)

readline.parse_and_bind("tab: complete")

# try:
#     import readline, rlcompleter
#     readline.parse_and_bind("tab: complete")
#     readline.parse_and_bind('bind ^I rl_complete')
#     # class MyCompleter(rlcompleter.Completer):
#     #     def complete(self, text, state):
#     #         if text.lstrip() == '':
#     #             if state == 0:
#     #                 return text + '\t'
#     #             else:
#     #                 return None
#     #         else:
#     #             return rlcompleter.Completer.complete(self, text, state)
#     # readline.set_completer(MyCompleter().complete)
# except ImportError:
#     print("Readline is not installed either. No tab completion is enabled.")


# Enable Color Prompts
######################

sys.ps1 = "%s>>> %s" % ("\x1B[32;1m", "\x1B[0m")
sys.ps2 = "%s... %s" % ("\x1B[31;1m", "\x1B[0m")

# Enable Pretty Printing for stdout
###################################

def my_displayhook(value):
    if value is not None:
        try:
            import __builtin__
            __builtin__._ = value
        except ImportError:
            __builtins__._ = value

        pprint.pprint(value)
sys.displayhook = my_displayhook

# Welcome message
#################

WELCOME = """\
\x1B[36;5m
You've got color, history, and pretty printing.
(If your ~/.inputrc doesn't suck, you've also
got completion and vi-mode keybindings.)
Type \e to get an external editor.
\x1B[0m"""

atexit.register(lambda: sys.stdout.write("""\x1B[35;4m
Sheesh, I thought he'd never leave. Who invited that man?

\x1B[0m"""))


# Start an external editor with \e
##################################
# http://aspn.activestate.com/ASPN/Cookbook/Python/Recipe/438813/

EDITOR = os.environ.get('EDITOR', 'vi')
EDIT_CMD = '\e'

class EditableBufferInteractiveConsole(InteractiveConsole):
    def __init__(self, *args, **kwargs):
        self.last_buffer = [] # This holds the last executed statement
        InteractiveConsole.__init__(self, *args, **kwargs)

    def runsource(self, source, *args):
        self.last_buffer = [ source.encode('utf-8') ]
        return InteractiveConsole.runsource(self, source, *args)

    def raw_input(self, *args):
        line = InteractiveConsole.raw_input(self, *args)
        if line == EDIT_CMD:
            fd, tmpfl = mkstemp('.py')
            os.write(fd, b'\n'.join(self.last_buffer))
            os.close(fd)
            os.system('%s %s' % (EDITOR, tmpfl))
            line = open(tmpfl).read()
            os.unlink(tmpfl)
            tmpfl = ''
            lines = line.split( '\n' )
            for i in range(len(lines) - 1): self.push( lines[i] )
            line = lines[-1]
        return line

c = EditableBufferInteractiveConsole(locals=locals())
c.interact(banner=WELCOME)

# Exit the Python shell on exiting the InteractiveConsole
sys.exit()


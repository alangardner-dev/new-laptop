# Vs Code Keyboard Bindings

```
[
  {
    "key": "ctrl+shift+k",
    "command": "deleteAllRight",
    "when": "textInputFocus && !editorReadonly"
  },
  {
    "key": "ctrl+k",
    "command": "-deleteAllRight",
    "when": "textInputFocus && !editorReadonly"
  },
  {
    "key": "ctrl+k",
    "command": "editor.action.deleteLines",
    "when": "textInputFocus && !editorReadonly"
  },
  {
    "key": "shift+cmd+k",
    "command": "-editor.action.deleteLines",
    "when": "textInputFocus && !editorReadonly"
  },
  {
    "key": "ctrl+cmd+g",
    "command": "editor.action.previousMatchFindAction",
    "when": "editorFocus"
  },
  {
    "key": "shift+cmd+g",
    "command": "-editor.action.previousMatchFindAction",
    "when": "editorFocus"
  },
  {
    "key": "ctrl+cmd+g",
    "command": "workbench.action.terminal.findPrevious",
    "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
  },
  {
    "key": "shift+cmd+g",
    "command": "-workbench.action.terminal.findPrevious",
    "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
  },
  {
    "key": "ctrl+cmd+g",
    "command": "workbench.action.terminal.navigateAccessibleBuffer",
    "when": "terminalAccessibleBufferFocus && terminalHasBeenCreated || terminalAccessibleBufferFocus && terminalProcessSupported"
  },
  {
    "key": "shift+cmd+g",
    "command": "-workbench.action.terminal.navigateAccessibleBuffer",
    "when": "terminalAccessibleBufferFocus && terminalHasBeenCreated || terminalAccessibleBufferFocus && terminalProcessSupported"
  },
  {
    "key": "shift+cmd+g",
    "command": "editor.action.nextMatchFindAction",
    "when": "editorFocus"
  },
  {
    "key": "cmd+g",
    "command": "-editor.action.nextMatchFindAction",
    "when": "editorFocus"
  },
  {
    "key": "shift+cmd+g",
    "command": "workbench.action.terminal.findNext",
    "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
  },
  {
    "key": "cmd+g",
    "command": "-workbench.action.terminal.findNext",
    "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
  },
  {
    "key": "shift+cmd+g",
    "command": "workbench.action.terminal.goToRecentDirectory",
    "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
  },
  {
    "key": "cmd+g",
    "command": "-workbench.action.terminal.goToRecentDirectory",
    "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
  },
  {
    "key": "cmd+g",
    "command": "workbench.action.gotoLine"
  },
  {
    "key": "ctrl+g",
    "command": "-workbench.action.gotoLine"
  }
]
```

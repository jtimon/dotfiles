
define_key(content_buffer_normal_keymap, "C-c", "cmd_copy");
define_key(content_buffer_normal_keymap, "C-v", "yank");
define_key(content_buffer_normal_keymap, "C-z", "cmd_undo");

define_key(content_buffer_normal_keymap, "C-tab", "buffer-next");
define_key(content_buffer_normal_keymap, "C-S-tab", "buffer-previous");

define_key(content_buffer_normal_keymap, "M-z", "restore-killed-buffer-url");

define_key(content_buffer_normal_keymap, "f", "follow-new-buffer-background");
define_key(content_buffer_normal_keymap, "C-f", "follow");
// define_key(content_buffer_normal_keymap, "C-f", "follow-new-buffer");
define_key(content_buffer_normal_keymap, "M-f", "follow-new-window");

define_key(content_buffer_normal_keymap, "g", "find-url-new-buffer");
define_key(content_buffer_normal_keymap, "C-g", "find-url");
define_key(content_buffer_normal_keymap, "M-g", "find-url-new-window");


// Movement
// define_key(text_keymap, "C-a", "beginning-of-line");
// define_key(text_keymap, "C-e", "end-of-line");
// define_key(text_keymap, "C-b", "backward-char");
// define_key(text_keymap, "left", "backward-char");
// define_key(text_keymap, "M-b", "backward-word");
// define_key(text_keymap, "C-left", "backward-word");
// define_key(text_keymap, "M-left", "backward-word");
// define_key(text_keymap, "C-f", "forward-char");
// define_key(text_keymap, "right", "forward-char");
// define_key(text_keymap, "M-f", "forward-word");
// define_key(text_keymap, "C-right", "forward-word");
// define_key(text_keymap, "M-right", "forward-word");
// define_key(text_keymap, "home", "beginning-of-line");
// define_key(text_keymap, "end", "end-of-line");

// Copy-paste-kill-delete
define_key(text_keymap, "C-v", "yank");
define_key(text_keymap, "C-w", "kill-region");
define_key(text_keymap, "C-c", "kill-ring-save");
define_key(text_keymap, "C-k", "cut-to-end-of-line");
define_key(text_keymap, "S-delete", "kill-region");
define_key(text_keymap, "S-back_space", "cmd_deleteCharBackward");
define_key(text_keymap, "back_space", "cmd_deleteCharBackward");
define_key(text_keymap, "M-back_space", "cmd_deleteWordBackward");
define_key(text_keymap, "C-d", "cmd_deleteCharForward");
define_key(text_keymap, "delete", "cmd_deleteCharForward");
define_key(text_keymap, "M-d", "cmd_deleteWordForward");
define_key(text_keymap, "C-delete", "cmd_deleteWordForward");
define_key(text_keymap, "C-back_space", "cmd_deleteWordBackward");

// Undo-redo
define_key(text_keymap, "C-?","cmd_redo");
define_key(text_keymap, "C-_", "cmd_undo");
define_key(text_keymap, "C-x u", "cmd_undo");
define_key(text_keymap, "C-/", "cmd_undo");

// Selecting
define_key(text_keymap, "C-x h", "cmd_selectAll");
define_key(text_keymap, "C-space", "set-mark");
define_key(text_keymap, "C-@", "set-mark");
define_key(text_keymap, "S-home", "cmd_selectBeginLine");
define_key(text_keymap, "S-end", "cmd_selectEndLine");
define_key(text_keymap, "C-S-left", "cmd_selectWordPrevious");
define_key(text_keymap, "C-S-right", "cmd_selectWordNext");
define_key(text_keymap, "S-insert", "paste-x-primary-selection");

// Miscellaneous
define_key(text_keymap, "M-l", "downcase-word");
define_key(text_keymap, "M-u", "upcase-word");
define_key(text_keymap, "M-c", "capitalize-word");
define_key(text_keymap, "C-t", "transpose-chars");
define_key(text_keymap, "M-(", "insert-parentheses");

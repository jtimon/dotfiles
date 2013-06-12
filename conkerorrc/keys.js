
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

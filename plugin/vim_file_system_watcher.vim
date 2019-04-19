autocmd User FileChangedExternallyPre doautocmd User FileChangedExternally

" Requires watch_for_changes.vim in autoload
" Enables auto-file read on console-vim
" Also works with webserver updates(!)
"
" Reference: http://vim.wikia.com/wiki/Have_Vim_check_automatically_if_the_file_has_changed_externally
"
let autoreadargs={'autoread': 1}
execute vim_file_system_watcher#WatchForChanges("*", autoreadargs)

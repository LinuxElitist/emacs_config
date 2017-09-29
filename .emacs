
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;; Mainly for coding in Rust. 
(add-to-list 'load-path "/home/sbk/Rust/variables/src/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;;Default theme
(load-theme 'misterioso)

;; This is good for opening files with autocomplete options
(require 'ido)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-enable-tramp-completion nil)
(setq ido-confirm-unique-completion nil)

;; Dont need no tool bar. #tty :D
(menu-bar-mode 0)
(tool-bar-mode 0)
(show-paren-mode 1)

(add-hook 'c-mode-common-hook
  (lambda() 
    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))

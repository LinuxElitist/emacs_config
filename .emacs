
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
;; Save/Restore files
(desktop-save-mode 1)

;; eww browser functionality                                                                                                                                                                                                                                                              
(setq browse-url-browser-function 'eww-browse-url)                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                          
;; Remote access                                                                                                                                                                                                                                                                          
(require 'tramp)                                                                                                                                                                                                                                                                          
(setq tramp-default-method "scp")                                                                                                                                                                                                                                                         
(custom-set-variables                                                                                                                                                                                                                                                                     
 ;; custom-set-variables was added by Custom.                                                                                                                                                                                                                                             
 ;; If you edit it by hand, you could mess it up, so be careful.                                                                                                                                                                                                                          
 ;; Your init file should contain only one such instance.                                                                                                                                                                                                                                 
 ;; If there is more than one, they won't work right.                                                                                                                                                                                                                                     
 '(package-selected-packages (quote (org-edna))))                                                                                                                                                                                                                                         
(custom-set-faces                                                                                                                                                                                                                                                                         
 ;; custom-set-faces was added by Custom.                                                                                                                                                                                                                                                 
 ;; If you edit it by hand, you could mess it up, so be careful.                                                                                                                                                                                                                          
 ;; Your init file should contain only one such instance.                                                                                                                                                                                                                                 
 ;; If there is more than one, they won't work right.                                                                                                                                                                                                                                     
 ) 

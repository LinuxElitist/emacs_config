
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

;; Vi type bracket matchin g 
(global-set-key "%" 'match-paren)
          
          (defun match-paren (arg)
            "Go to the matching paren if on a paren; otherwise insert %."
            (interactive "p")
            (cond ((looking-at "\\s(") (forward-list 1) (backward-char 1))
                  ((looking-at "\\s)") (forward-char 1) (backward-list 1))
                  (t (self-insert-command (or arg 1)))))


;; Add a cc-mode style for editing LLVM C and C++ code
(c-add-style "llvm.org"
             '("gnu"
	       (fill-column . 80)
	       (c++-indent-level . 2)
	       (c-basic-offset . 2)
	       (indent-tabs-mode . nil)
	       (c-offsets-alist . ((arglist-intro . ++)
				   (innamespace . 0)
(member-init-intro . ++)))))

;; Magit for emacs 
;;M-x package-refresh RET
;;M-x package-install RET magit RET
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;;Smidgen hacky way of resizing buffers
(defun halve-other-window-height ()
  "Expand current window to use half of the other window's lines."
  (interactive)
  (enlarge-window (/ (window-height (next-window)) 2)))

(global-set-key (kbd "C-c v") 'halve-other-window-height)

;;Hide Welcome screen in emacs GUI
(setq inhibit-startup-screen t)

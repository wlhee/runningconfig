
(global-set-key "\C-h" 'delete-backward-char)
               
;; overrides mark-whole-buffer
(global-set-key "\C-xh" 'help-command)


;; enable Ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)


;; set font
;; (add-to-list 'default-frame-alist '(font .  DejaVu Sans Mono 14 ))
;; (set-frame-attribute 'default t :font  DejaVu Sans Mono 14 ))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "unspecified-bg" :foreground "unspecified-fg" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 136 :width normal :family "DejaVu Sans Mono")))))


;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs-backups/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs-backups/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs-backups/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs-backups/autosaves/" t)


;; Matlab / Octave mode
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))


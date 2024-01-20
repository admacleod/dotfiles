(scroll-bar-mode -1)
(tool-bar-mode -1)

(when (member "Berkeley Mono" (font-family-list))
  (add-to-list 'default-frame-alist
             '(font . "Berkeley Mono-14")))

(setq auto-save-default nil
      create-lockfiles nil
      make-backup-files nil
      custom-file null-device)

(setq inhibit-startup-message t
      ring-bell-function 'ignore
      sentence-end-double-space nil
      delete-selection-mode t
      dired-auto-revert-buffer t
      global-auto-revert-mode t
      global-auto-revert-non-file-buffers t
      eshell-scroll-to-bottom-on-input t
      man-notify-method 'aggressive)

(save-place-mode t)
(fido-vertical-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)

(use-package which-key
  :ensure t
  :config
  (which-key-mode)
  (which-key-setup-minibuffer))

(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archive-priorities '("melpa" . -1) t)
(use-package mini-echo
  :ensure t
  :config
  (mini-echo-mode))
(use-package commentary-theme
  :ensure t
  :config
  (load-theme 'commentary t))

;; Mac OS specific settings
(when (eq system-type 'darwin)
  (progn
    (setenv "PATH" (concat "/opt/homebrew/bin:" (getenv "PATH")))
    (use-package keychain-environment
      :ensure t
      :config
      (keychain-refresh-environment))
    ))

(dired "~")

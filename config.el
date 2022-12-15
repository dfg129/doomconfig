;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Quo"
      user-mail-address "statusofquo@lamarckian.com")
;; (setq initial-frame-alist '((top . 60) (left . 1) (width . 143) (height . 22)))
;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'modus-vivendi)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


(setq vterm-always-compile-module t)

(setq projectile-project-search-path '("~/lamarckiandreams"))


(setq vterm-shell "/opt/homebrew/bin/nu")

(setq fancy-splash-image (concat doom-private-dir "splash/doom-emacs-flugo-slant_out_purple.png"))
;; (setq fancy-splash-image (concat doom-private-dir "splash/doom-emacs-color.png"))



;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;
;;
(add-to-list 'default-frame-alist '(height . 72))
(add-to-list 'default-frame-alist '(width . 174))
(add-to-list 'default-frame-alist '(left . 2713))
(add-to-list 'default-frame-alist '(top . .1))


(display-time-mode 1)                             ; Enable time in the mode-line

(use-package! beacon)
(after! beacon (beacon-mode 1))

(use-package! focus)

(use-package treemacs-projectile
  :after (treemacs projectile))

(after! (treemacs projectile)
  (treemacs-project-follow-mode 1))

;; (after! projectile (setq projectile-project-root-files-bottom-up (remove ".git"
;;          projectile-project-root-files-bottom-up)))

;;(add-to-list 'initial-frame-alist
;;       '((height . 75)
;;         (width . 174)
;;         (left . 2713)
;;         (top . 91)
;;         (vertical-scroll-bars . nil)
;;         (horizontal-scroll-bars . nil)
;;         (tool-bar-lines . 0)))
;;
;;
;; (add-to-list 'initial-frame-alist '(fullscreen . maximized))


(use-package! super-save
  :ensure t
  :config
  (super-save-mode +1))

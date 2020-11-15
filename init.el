;;----------------------------------------------------------------------------------
;;                               Cale's Emacs Config
;;----------------------------------------------------------------------------------
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin/"))  
(setq exec-path (append exec-path '("/Library/TeX/texbin/")))

(tool-bar-mode 0)
(menu-bar-mode 0)
;;(desktop-save-mode 1)
(display-time-mode 0)
(display-battery-mode 0)
(setq ring-bell-function 'ignore)
(setq-default cursor-type 'box)
(setq initial-scratch-message "Its funny how the colors of the real world only seem really real when you viddy them on the screen.")
(setq initial-major-mode 'org-mode)


;;----------------------------------------------------------------------------------
;;                             Setting Custome COMMANDS
;;----------------------------------------------------------------------------------

(defalias 'open 'find-file)
(defalias 'openo 'find-file-other-windo)
(global-set-key (kbd "C-x C-e") 'eval-buffer)

;;----------------------------------------------------------------------------------
;;                                  Config Melpa
;;----------------------------------------------------------------------------------

(require 'package)
;; any add to list for package-archives (to add marmalade or melpa) goes here
(add-to-list 'package-archives 
    '("MELPA" .
      "http://melpa.milkbox.net/packages/"))
(package-initialize)

;;----------------------------------------------------------------------------------
;;                               Setting up Theme
;;----------------------------------------------------------------------------------

(load-theme 'gruvbox-dark-medium t)

;;----------------------------------------------------------------------------------
;;                               Modeline Configs
;;----------------------------------------------------------------------------------

;; DOOM Modeline
(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-height 22)
(setq doom-modeline-buffer-file-name-style 'truncate-upto-root)
(setq doom-modeline-major-mode-icon nil)


;; Custom Modeline
;;(setq-default mode-line-format
;;     (list
;;       ;;" " mode-line-modified
;;       ;;" " mode-line-buffer-identification "%3 %* %6 %l %6 %m" vc-mode " %6 "
;;       " %f %2 %&%*%+ %4 %l %4 "
;;       (setcdr (assq 'vc-mode mode-line-format)
;;        '((:eval (replace-regexp-in-string "^ Git" " " vc-mode))))
;;       " %4 %m"
;;       mode-line-misc-info
;;       mode-line-end-spaces))
;;(setq global-mode-string '((t jabber-activity-mode-string)
;;			   "" display-time-string appt-mode-string))

;; Feebleline Config
;;(use-package    feebleline
;;  :ensure       t
;;  :config       (setq feebleline-msg-functions
;;                      '((feebleline-line-number         :post "" :fmt "%5s")
;;                        (feebleline-column-number       :pre ":" :fmt "%-2s")
;;                        (feebleline-file-directory      :face feebleline-dir-face :post "")
;;                        (feebleline-file-or-buffer-name :face font-lock-keyword-face :post "")
;;                        (feebleline-file-modified-star  :face font-lock-warning-face :post "")
;;                        (feebleline-git-branch          :face feebleline-git-face :pre " : ")
;;                        (feebleline-project-name        :align right)))
;;                (feebleline-mode 1))

;;----------------------------------------------------------------------------------
;;                               Neotree
;;----------------------------------------------------------------------------------

(setq neo-create-file-auto-open nil
        neo-auto-indent-point nil
        neo-autorefresh nil
        neo-mode-line-type 'none
        neo-window-width 28
        neo-show-updir-line t
        neo-theme 'icons
        neo-banner-message nil
        neo-confirm-create-file #'off-p
        neo-confirm-create-directory #'off-p
        neo-show-hidden-files nil
        neo-keymap-style 'concise
        neo-show-hidden-files t
        neo-hidden-regexp-list
        '(;; vcs folders
          "^\\.\\(?:git\\|hg\\|svn\\)$"
          ;; compiled files
          "\\.\\(?:pyc\\|o\\|elc\\|lock\\|css.map\\|class\\)$"
          ;; generated files, caches or local pkgs
          "^\\(?:node_modules\\|vendor\\|.\\(project\\|cask\\|yardoc\\|sass-cache\\)\\)$"
          ;; org-mode folders
          "^\\.\\(?:sync\\|export\\|attach\\)$"
          ;; temp files
          "~$"
          "^#.*#$"))

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


;;----------------------------------------------------------------------------------
;;                               Setting Custome Variables
;;----------------------------------------------------------------------------------

;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "latex")
 '(blink-cursor-mode nil)
 '(custom-safe-themes
   (quote
    ("aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "4e4befa32590db02faa3b1589e7ce9f3b6065cd24e8da804b39b747f2473dd50" "b374cf418400fd9a34775d3ce66db6ee0fb1f9ab8e13682db5c9016146196e9c" "4c7d8a8b6915e0bc2ee1c9cc145509fb0b30333ee276b023a81b1e7502ebbfb7" "41c8c11f649ba2832347fe16fe85cf66dafe5213ff4d659182e25378f9cfc183" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "1d2f406a342499f0098f9388b87d05ec9b28ccb12ca548f4f5fa80ae368235b6" "c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "4f74c743a218e6e8d9a70fc03d81f2a7ac3ec4fb621caec6b9690b3d7177fc49" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "2a998a3b66a0a6068bcb8b53cd3b519d230dd1527b07232e54c8b9d84061d48d" "de1f10725856538a8c373b3a314d41b450b8eba21d653c4a4498d52bb801ecd2" "5ed25f51c2ed06fc63ada02d3af8ed860d62707e96efc826f4a88fd511f45a1d" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "ffe5034eb4cf84c04c4389022113a7c9e0b43694d4648482522021a34db9e7fd" "196df8815910c1a3422b5f7c1f45a72edfa851f6a1d672b7b727d9551bb7c7ba" "8be07a2c1b3a7300860c7a65c0ad148be6d127671be04d3d2120f1ac541ac103" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "fede08d0f23fc0612a8354e0cf800c9ecae47ec8f32c5f29da841fe090dfc450" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "bc4c89a7b91cfbd3e28b2a8e9e6750079a985237b960384f158515d32c7f0490" "5a39d2a29906ab273f7900a2ae843e9aa29ed5d205873e1199af4c9ec921aaab" "174502267725776b47bdd2d220f035cae2c00c818765b138fea376b2cdc15eb6" "1e9001d2f6ffb095eafd9514b4d5974b720b275143fbc89ea046495a99c940b0" "04232a0bfc50eac64c12471607090ecac9d7fd2d79e388f8543d1c5439ed81f5" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "bf390ecb203806cbe351b966a88fc3036f3ff68cd2547db6ee3676e87327b311" "72085337718a3a9b4a7d8857079aa1144ea42d07a4a7696f86627e46ac52f50b" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "abdb1863bc138f43c29ddb84f614b14e3819982936c43b974224641b0b6b8ba4" "8dce5b23232d0a490f16d62112d3abff6babeef86ae3853241a85856f9b0a6e7" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "980f0adf3421c25edf7b789a046d542e3b45d001735c87057bccb7a411712d09" "37f000f7eb619621e44c39fbac5cd54b1869357ff2a8154513bd72677acffb6f" "35f9af84a00ab5b546afe8f526e6c478dbf1cb4e07407b0bacf23d357ca2f559" "d976a09923b5a06d7082e328a0d695168cb726c6bf9de7c3bbb86b89bdf14b0f" "c129ebe33ad0b9e96022566ffbc25634706c9e47668357e6a8413e778c6bc26a" "d6fa2972a122d0517eeee18108ff96f148b1cf269328d84f61fc0451d00f188f" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" default)))
 '(dired-sidebar-theme (quote icons))
 '(display-battery-mode f)
 '(display-time-mode f)
 '(ein:jupyter-default-server-command "/usr/local/bin/jupyter")
 '(fringe-mode 0 nil (fringe))
 '(inhibit-startup-buffer-menu t)
 '(initial-buffer-choice t)
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . emacs))))
 '(package-selected-packages
   (quote
    (gruvbox-theme monokai-alt-theme naysayer-theme flymake-python-pyflakes darcula-theme dracula-theme company-tabnine neotree company-anaconda ac-js2 flycheck tern-auto-complete company-tern xref-js2 js2-refactor ns-auto-titlebar monokai-pro-theme monokai-theme evil tao-theme brutalist-theme eink-theme solarized-theme helm kosmos-theme golden-ratio projectile badwolf-theme md-readme nord-theme multi-term auctex py-autopep8 doom-modeline elpyall-the-icons ein ansi package-build shut-up epl git commander f dash s cask tablist pdf-tools fountain-mode)))
 '(scroll-bar-mode nil))

;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;----------------------------------------------------------------------------------
;;                              Fixing Grep Issues
;;----------------------------------------------------------------------------------

(eval-when-compile (require 'cl))
(defun kill-grep-window ()
  (destructuring-bind (window major-mode)
      (with-selected-window (next-window (selected-window))
        (list (selected-window) major-mode))
    (when (eq major-mode 'grep-mode)
      (delete-window window))))

(add-hook 'next-error-hook 'kill-grep-window)

(setq eshell-scroll-to-bottom-on-output nil)

;;----------------------------------------------------------------------------------
;;                               Setting Linum Hooks
;;----------------------------------------------------------------------------------

;;(setq linum-format " %d ")
;;(global-linum-mode 0)
;;(add-hook 'pdf-view-mode-hook (lambda() (linum-mode -1)))
;;(add-hook 'eshell-mode-hook (lambda() (linum-mode -1)))
;;(add-hook 'term-mode-hook (lambda() (linum-mode -1)))
;;(add-hook 'ansi-term-mode-hook (lambda() (linum-mode -1)))
;;(add-hook 'shell-mode-hook (lambda() (linum-mode -1)))
;;(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(defun yeslinum ()
  (global-linum-mode 1)
)
;;(add-hook 'python-mode-hook 'yeslinum)
;;(add-hook 'c-mode-hook 'yeslinum)
;;(add-hook 'cpp-mode-hook 'yeslinum)
;;(add-hook 'org-mode-hook 'yeslinum)

;;----------------------------------------------------------------------------------
;;                         Requiring additonal Packages
;;----------------------------------------------------------------------------------
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))

(add-to-list 'load-path "~/.emacs.d/elpa")
(require 'projectile)
;;(require 'golden-ratio)

;;(setq-default TeX-engine 'xetex)
(setq-default TeX-PDF-mode t)


;;----------------------------------------------------------------------------------
;;                                  Helm Config
;;----------------------------------------------------------------------------------

(require 'helm)
(require 'helm-config)

;;(set-face-attribute 'helm-source-header nil :height 10)
(setq helm-split-window-in-side-p t)
(setq helm-display-header-line nil)
;;(setq helm-autoresize-max-height 3)
;;(setq helm-autoresize-min-height 3)
;;(helm-autoresize-mode 1)
(helm-mode 1)

;;; Don't use helm's own displaying mode line function
;;(fset 'helm-display-mode-line #'ignore)

;;(add-hook 'helm-after-initialize-hook
;;          (defun hide-mode-line-in-helm-buffer ()
;;            "Hide mode line in `helm-buffer'."
;;            (with-helm-buffer
;;              (setq-local mode-line-format nil))))

;; Helm keybindings
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x r b") 'helm-bookmarks)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-i") 'helm-imenu-in-all-buffers)

;;start server
;;(load "server")
;;(unless (server-running-p) (server-start))

;;----------------------------------------------------------------------------------
;;                                  PDF Mode
;;----------------------------------------------------------------------------------

(pdf-tools-install)

;; Use pdf-tools to open PDF files
(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
      TeX-source-correlate-start-server t)

;; Update PDF buffers after successful LaTeX runs
(add-hook 'TeX-after-compilation-finished-functions
          #'TeX-revert-document-buffer)

(defun org-export-pdf-then-open()
  (org-open-file (org-latex-export-to-pdf)) )

(defun org-auto-export-on()
  "auto export to pdf when saving an org file"
  (interactive) (when (eq major-mode 'org-mode)
		  (add-hook 'after-save-hook 'org-export-pdf-then-open t t) )
  )
;;----------------------------------------------------------------------------------
;;                        Set Default Window Size
;;----------------------------------------------------------------------------------

;;Setting Emacs window size
(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 204) ;; chars
              (height . 62))) ;; lines=))
      (setq default-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 204)
              (height . 62))))
  (progn
    (setq initial-frame-alist '( (tool-bar-lines . 0)))
    (setq default-frame-alist '( (tool-bar-lines . 0)))))

;;----------------------------------------------------------------------------------
;;                                  Python Config
;;----------------------------------------------------------------------------------

(add-hook 'python-mode-hook 'flymake-python-pyflakes 'auto-complete-mode)

;;----------------------------------------------------------------------------------
;;                               Setting up Ein
;;----------------------------------------------------------------------------------

;;(require 'ein)
;;(require 'ein-core)
;;(require 'ein-notebook)
;;(require 'ein-subpackages)

;;----------------------------------------------------------------------------------
;;                                  IDE Config
;;----------------------------------------------------------------------------------

(evil-mode)

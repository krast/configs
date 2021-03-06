(setq twittering-use-master-password t)
(setq evil-want-C-u-scroll t)
(require 'evil-jumper)
(require 'evil-visualstar)
(global-evil-leader-mode)
(evil-mode 1)
(menu-bar-mode -1)

(setq nyan-wavy-trail nil)
(setq nyan-bar-length 20)
(setq nyan-animate-nyancat t)
(nyan-mode)

;; better than vim-vinegar
(require 'dired)
(define-key evil-normal-state-map (kbd "-") 'dired-jump)
(define-key dired-mode-map (kbd "-") 'dired-up-directory)

(global-set-key (kbd "C-h") 'windmove-left)
(global-set-key (kbd "C-l") 'windmove-right)
(global-set-key (kbd "C-j") 'windmove-down)
(global-set-key (kbd "C-k") 'windmove-up)
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)

(evil-define-key 'normal omnisharp-mode-map (kbd "g d") 'omnisharp-go-to-definition)
(evil-define-key 'normal omnisharp-mode-map (kbd "<SPC> b") 'omnisharp-build-in-emacs)
(evil-define-key 'normal omnisharp-mode-map (kbd "<SPC> cf") 'omnisharp-code-format)
(evil-define-key 'normal omnisharp-mode-map (kbd "<SPC> nm") 'omnisharp-rename-interactively)
(evil-define-key 'normal omnisharp-mode-map (kbd "<SPC> fu") 'omnisharp-helm-find-usages)
(evil-define-key 'normal omnisharp-mode-map (kbd "<M-RET>") 'omnisharp-run-code-action-refactoring)
(evil-define-key 'normal omnisharp-mode-map (kbd "<SPC> ss") 'omnisharp-start-omnisharp-server)
(evil-define-key 'normal omnisharp-mode-map (kbd "<SPC> sp") 'omnisharp-stop-omnisharp-server)
(evil-define-key 'normal omnisharp-mode-map (kbd "<SPC> fi") 'omnisharp-find-implementations)
(evil-define-key 'normal omnisharp-mode-map (kbd "<SPC> x") 'omnisharp-fix-code-issue-at-point)
(evil-define-key 'normal omnisharp-mode-map (kbd "<SPC> fx") 'omnisharp-fix-usings)
(evil-define-key 'normal omnisharp-mode-map (kbd "<SPC> o") 'omnisharp-auto-complete-overrides)

(define-key evil-normal-state-map (kbd "<SPC> rt") (lambda() (interactive) (omnisharp-unit-test "single")))
(define-key evil-normal-state-map (kbd "<SPC> rf") (lambda() (interactive) (omnisharp-unit-test "fixture")))
(define-key evil-normal-state-map (kbd "<SPC> ra") (lambda() (interactive) (omnisharp-unit-test "all")))
(define-key evil-normal-state-map (kbd "<SPC> rl") 'recompile)
(define-key evil-normal-state-map (kbd "<SPC> w") 'evil-write)
(define-key evil-normal-state-map (kbd "M-J") 'flycheck-next-error)
(define-key evil-normal-state-map (kbd "M-K") 'flycheck-previous-error)
(define-key evil-normal-state-map (kbd "<SPC> cc") 'comment-or-uncomment-region-or-line)
(define-key evil-visual-state-map (kbd "<SPC> cc") 'comment-or-uncomment-region-or-line)
(define-key evil-normal-state-map (kbd "<SPC> c <SPC>") 'comment-or-uncomment-region-or-line)
(define-key evil-visual-state-map (kbd "<SPC> c <SPC>") 'comment-or-uncomment-region-or-line)
(define-key evil-normal-state-map (kbd "<SPC> cn") 'next-error)
(define-key evil-normal-state-map (kbd "<SPC> cp") 'previous-error)
(define-key evil-normal-state-map (kbd "<RET>") 'smex)

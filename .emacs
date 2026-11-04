(add-to-list 'warning-suppress-types '(files missing-lexbind-cookie))

;;软件源配置
(setq package-archives '(("gnu"    . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(package-initialize)

(setq custom-file "~/.emacs.custom.el")

;;Windows下需要先安装gpg4win
(load-file "~/.emacs.rc/rc.el")

;;(add-to-list 'default-frame-alist '(font . "Iosevka NF-20"))
;;Iosevka+思源黑体 https://github.com/jonz94/Sarasa-Gothic-Nerd-Fonts/
(add-to-list 'default-frame-alist '(font . "Sarasa Mono SC Nerd Font-20"))

(rc/require-theme 'gruber-darker)
(rc/require 'markdown-mode)

;; 设置所有默认编码为 UTF-8
(set-default-coding-systems 'utf-8)
;; 优先识别 UTF-8
(prefer-coding-system 'utf-8)
;; 可选：统一终端和剪贴板的编码
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
;; 配置eshell的编码, 防止外部命令(如git)输出乱码
(add-hook 'eshell-mode-hook
          (lambda ()
	    ;; 强制eshell优先以UTF-8读取进程输出
            (setq-local coding-system-for-read 'utf-8)
	    ;; 确保git调用的less分页器使用UTF-8 (解决git log翻页乱码)
            (setenv "LESSCHARSET" "utf-8")))

(when (eq system-type 'windows-nt)
  ;; 修复Windows下从外部复制中文到Emacs乱码的问题
  (set-selection-coding-system 'utf-16-le) ; Windows剪切板默认是UTF-16
  (set-clipboard-coding-system 'utf-16-le)
  (add-to-list 'process-coding-system-alist
             '("pwsh" utf-8-dos . utf-8-unix))
  ;; 设置默认shell
  ;; 设置 shell-command (M-!) Windows下使用 PowerShell 7
  (let ((pwsh-path "D:/Programs/Scoop/apps/powershell/current/pwsh.exe"))
    (if (file-exists-p pwsh-path)
        (progn
          (setq shell-file-name pwsh-path)
          ;; -Command 表示执行后面的字符串，我们加上设置输出编码的语句
          (setq shell-command-switch "-Command")))))

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(column-number-mode t)
(ido-mode 1)
(ido-everywhere 1)

;; 设置初始窗口大小
(add-to-list 'initial-frame-alist '(width . 72))
(add-to-list 'initial-frame-alist '(height . 18))
;; 启动时最大化
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; simpc-mode
;; Adding `/path/to/simpc` to load-path so `require` can find it
(add-to-list 'load-path "~/.emacs.local/")

;; Importing simpc-mode
(require 'simpc-mode)
;; Automatically enabling simpc-mode on files with extensions like .h, .c, .cpp, .hpp
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(rc/require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;; multiple cursors
(rc/require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)
(global-set-key (kbd "C-\"")        'mc/skip-to-next-like-this)
(global-set-key (kbd "C-:")         'mc/skip-to-previous-like-this)

(defun rc/duplicate-line ()
  "Duplicate current line"
  (interactive)
  (let ((column (- (point) (point-at-bol)))
        (line (let ((s (thing-at-point 'line t)))
                (if s (string-remove-suffix "\n" s) ""))))
    (move-end-of-line 1)
    (newline)
    (insert line)
    (move-beginning-of-line 1)
    (forward-char column)))

(global-set-key (kbd "C-,") 'rc/duplicate-line)

;; 给Org-Mode添加Markdown导出功能
(eval-after-load "org" '(require 'ox-md nil t))

(load-file custom-file)

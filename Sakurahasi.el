(require 'dash)

(defvar Sakurahasi-window-height 15)
(defvar Sakurahasi-buffer-name "*Sakurahasi*")
(defvar Sakurahasi-size 8)

(defun Sakurahasi-cmd nil
    (interactive)
    (let*
        (
            (str (region-to-string (region-beginning) (region-end)))
            (origin-buffer (--> (current-buffer) (buffer-name it)))
            (buffer Sakurahasi-buffer-name))
        (delete-other-windows)
        (split-window-vertically Sakurahasi-window-height)
        (generate-new-buffer buffer)
        (switch-to-buffer buffer)
        (erase-buffer)
        (insert str)
        (text-scale-increase 0)
        (text-scale-increase Sakurahasi-size)
        (other-window 1)
        (switch-to-buffer origin-buffer)
        (keyboard-quit)))

(provide 'Sakurahasi)


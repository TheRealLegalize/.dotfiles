
# Цвета Catppuccin Mocha
# base: #1e1e2e, blue: #89b4fa, surface0: #313244, text: #cdd6f4

# Статус-бар
set -g status-position bottom
set -g status-justify left
set -g status-style 'fg=#89b4fa bg=#1e1e2e'

# Левая часть (Сессия)
set -g status-left-length 20
set -g status-left '#[fg=#1e1e2e,bg=#89b4fa,bold] #S #[fg=#89b4fa,bg=#1e1e2e,nobold]'

# Правая часть (Дата, Время, Хост)
set -g status-right-length 50
set -g status-right '#[fg=#313244,bg=#1e1e2e]#[fg=#cdd6f4,bg=#313244] %Y-%m-%d  %H:%M #[fg=#89b4fa,bg=#313244]#[fg=#1e1e2e,bg=#89b4fa,bold] #h '

# Оформление вкладок (Окон)
setw -g window-status-current-format '#[fg=#1e1e2e,bg=#fab387,bold] #I:#W #[fg=#fab387,bg=#1e1e2e,nobold]'
setw -g window-status-format '#[fg=#cdd6f4,bg=#1e1e2e] #I:#W '

# Цвет активной панели (границы)
set -g pane-border-style 'fg=#313244'
set -g pane-active-border-style 'fg=#89b4fa'

# Сообщения
set -g message-style 'fg=#1e1e2e bg=#89b4fa bold'

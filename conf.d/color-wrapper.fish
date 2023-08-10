function wrap_set_color
    set -f basetext $argv[1]
    set -e argv[1]
    if [ (count $argv) -eq '0' ]
        set -f wrap_color ''
    else
        set -f wrap_color (eval "set_color $argv")
    end
    echo -n -s "$wrap_color$basetext"(set_color normal)
end

function wrap_bold
    wrap_set_color $argv --bold
end

function wrap_dim
    wrap_set_color $argv --dim
end

function wrap_italics
    wrap_set_color $argv --italics
end

function wrap_reverse
    wrap_set_color $argv --reverse
end

function wrap_underline
    wrap_set_color $argv --underline
end

function wrap_color_black
    wrap_set_color $argv black
end

function wrap_color_red
    wrap_set_color $argv red
end

function wrap_color_green
    wrap_set_color $argv green
end

function wrap_color_yellow
    wrap_set_color $argv yellow
end

function wrap_color_blue
    wrap_set_color $argv blue
end

function wrap_color_magenta
    wrap_set_color $argv magenta
end

function wrap_color_cyan
    wrap_set_color $argv cyan
end

function wrap_color_white
    wrap_set_color $argv white
end

function wrap_color_brblack
    wrap_set_color $argv brblack
end

function wrap_color_brred
    wrap_set_color $argv brred
end

function wrap_color_brgreen
    wrap_set_color $argv brgreen
end

function wrap_color_bryellow
    wrap_set_color $argv bryellow
end

function wrap_color_brblue
    wrap_set_color $argv brblue
end

function wrap_color_brmagenta
    wrap_set_color $argv brmagenta
end

function wrap_color_brcyan
    wrap_set_color $argv brcyan
end

function wrap_color_brwhite
    wrap_set_color $argv brwhite
end

function wrap_background_color_black
    wrap_set_color $argv -b black
end

function wrap_background_color_red
    wrap_set_color $argv -b red
end

function wrap_background_color_green
    wrap_set_color $argv -b green
end

function wrap_background_color_yellow
    wrap_set_color $argv -b yellow
end

function wrap_background_color_blue
    wrap_set_color $argv -b blue
end

function wrap_background_color_magenta
    wrap_set_color $argv -b magenta
end

function wrap_background_color_cyan
    wrap_set_color $argv -b cyan
end

function wrap_background_color_white
    wrap_set_color $argv -b white
end

function wrap_background_color_brblack
    wrap_set_color $argv -b brblack
end

function wrap_background_color_brred
    wrap_set_color $argv -b brred
end

function wrap_background_color_brgreen
    wrap_set_color $argv -b brgreen
end

function wrap_background_color_bryellow
    wrap_set_color $argv -b bryellow
end

function wrap_background_color_brblue
    wrap_set_color $argv -b brblue
end

function wrap_background_color_brmagenta
    wrap_set_color $argv -b brmagenta
end

function wrap_background_color_brcyan
    wrap_set_color $argv -b brcyan
end

function wrap_background_color_brwhite
    wrap_set_color $argv -b brwhite
end

function wrap_but_condition
    switch $argv[2]
    case "$argv[1]"
        wrap_set_color $argv[2] $argv[3]
    case "*"
        wrap_set_color $argv[2] $argv[4]
    end
end

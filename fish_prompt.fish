function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    set_color brcyan
    echo -n '╭─○ '

    # User
    set_color brwhite
    echo -n '['
    set_color $fish_color_user
    echo -n $USER
    set_color normal


    echo -n '＠'
    #echo -n '🐙'

    # Host
    set_color brblue
    echo -n (prompt_hostname)
    set_color normal

    echo -n '🏡'

    # PWD
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    __terlar_git_prompt
    fish_hg_prompt
    set_color brwhite
    echo -n ']'
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
    end

    set_color brcyan
    echo -n '╰─●'

    echo -n ' 🐠 '
    set_color normal
end

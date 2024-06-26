set -g fish_greeting
set -gx EDITOR nvim
set LFCD
# set -Ux XDG_CURRENT_DESKTOP hyprland
# set -Ux XDG_SESSION_DESKTOP hyprland
# set -Ux XDG_SESSION_TYPE wayland
# set -Ux XDG_SCREENSHOTS_DIR "~/pics/Screenshots"

# fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh
fish_add_path /etc/profiles/per-user/$USER/etc/profile.d/hm-session-vars.sh
fish_add_path ~/.dotnet/tools/
fish_add_path /usr/share/z/

alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias lf="lfcd"
alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias paru="paru --bottomup"
alias ll="exa -hla"
alias ls="exa"
alias fd="fdfind"
alias fcf="nvim ~/.config/fish/config.fish"
alias ncf="nvim ~/.config/nvim/init.lua"

# nojalabien
function extract
    set name $argv # nombre del proyecto
    set temp $name"_temp" # variable temporal
    if not test -d $temp
        mkdir -p $temp
    end
    # agregar aqui los archivos que se desean extraer
    set list kt xml java jar png mp3 kts apk
    for i in $list
        fdfind . $name -e $i -E gradle -x cp {} $temp
    end
    # comprimir los archivos
    zip -r $name".zip" $temp
    rm -rf $temp
end

# lmao
function php_formatter
    for file in (find . -name "*.php")
        phpcs --standard=PSR12 $file
        phpcbf $file
    end
end

function fuckwebm
    set fuckassfile $argv
    if test (count $argv) = 1
        set newfile (echo $fuckassfile | cut -d '.' -f1)
        ffmpeg -i $fuckassfile $newfile".png"
    else
        for file in $fuckassfile
            set newfile (echo $file | cut -d '.' -f1)
            ffmpeg -i $file $newfile".png"
        end
    end
end

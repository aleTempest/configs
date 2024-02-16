set -g fish_greeting

fish_add_path ~/.cargo/bin
fish_add_path ~/.local/share/bob/nvim-bin
fish_add_path ~/.local/bin

alias ll="exa -la"
alias ls="exa"
alias conf="cd ~/.config/"
alias fcf="nvim ~/.config/fish/config.fish"
alias nvc="nvim ~/.config/nvim/init.lua"
alias fd="fdfind"

function extract
	set name $argv # nombre del proyecto
	set temp $name"_temp" # variable temporal
	if not test -d $temp
		mkdir -p $temp
	end
	# agregar aqui los archivos que se desean extraer
	set list kt xml java jar png mp3 kts
	for i in $list
		fdfind . $name -e $i -E gradle -x cp {} $temp
	end
	# comprimir los archivos
	zip -r $name".zip" $temp
	rm -rf $temp
end

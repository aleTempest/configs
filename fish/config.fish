set -g fish_greeting
set -gx EDITOR nvim
set LFCD 

fish_add_path ~/.cargo/bin
fish_add_path ~/.local/share/bob/nvim-bin
fish_add_path ~/.local/bin
# fish_add_path ~/.config/composer/vendor/bin/

alias lf="lfcd"
alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias paru="paru --bottomup"
alias vi="nvim"
alias ll="exa -hla"
alias ls="exa"
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

function subir
	if not test -z $argv
		rm -rf ~/Desktop/olmeca/wordpress/
		cp -r -v /opt/lampp/htdocs/wordpress/ ~/Desktop/olmeca/wordpress/
		mkdir ~/Desktop/olmeca/wordpress/bd
		/opt/lampp/bin/mysqldump -u root -p wordpress > ~/Desktop/olmeca/wordpress/bd/bd.sql
	end
	cd ~/Desktop/olmeca/
	git add .
	git commit -m "update"
	git push -u origin master
end


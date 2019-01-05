"Vim file to combine component vim files. Credit to Afnan Enayet
for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
        exe 'source' f
	endfor

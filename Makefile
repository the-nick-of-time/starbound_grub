archive: theme.txt background.png fonts icons/*
	tar -czf starbound_grub2.tar.gz theme.txt background.png hobo-16.pf2 hobo-20.pf2 select_*.png icons/

fonts: hobo.ttf
	grub-mkfont --output=hobo-16.pf2 --size=16 hobo.ttf
	grub-mkfont --output=hobo-20.pf2 --size=20 hobo.ttf

.PHONY: clean

clean:
	rm hobo-*.pf2
	rm starbound_grub2.tar.gz

archive: theme.txt fonts icons/*
	tar -czf starbound_grub2.tar.gz theme.txt hobo-12.pf2 hobo-16.pf2 hobo-20.pf2 icons/

fonts: hobo.ttf
	grub-mkfont --output=hobo-12.pf2 --size=12 hobo.ttf
	grub-mkfont --output=hobo-16.pf2 --size=16 hobo.ttf
	grub-mkfont --output=hobo-20.pf2 --size=20 hobo.ttf

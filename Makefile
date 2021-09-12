starbound_grub2.tar.gz: theme.txt background.png hobo-16.pf2 hobo-40.pf2 select_c.png select_w.png select_e.png select_n.png select_s.png select_ne.png select_nw.png select_se.png select_sw.png icons/ubuntu.png icons/windows.png icons/gnu-linux.png icons/manjaro.png
	tar c -z -f "$@" $^

hobo-%.pf2: hobo.ttf
	grub-mkfont --output=hobo-$*.pf2 --size=$* hobo.ttf

.PHONY: clean install

clean:
	rm hobo-*.pf2
	rm starbound_grub2.tar.gz

install: starbound_grub2.tar.gz
	./install.sh

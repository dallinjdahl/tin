src=cards.tin

dest=${src:%.tin=%.pdf}

all:V:$dest

psflags= -dPDFSETTINGS=/prepress -dEmbedAllFonts=true

&.pdf: &.tin tin.so
	9tbl <$stem.tin | neatroff | neatpost -p 508x762 | ps2pdf $psflags - $target

clean:V:
	rm -f *.pdf

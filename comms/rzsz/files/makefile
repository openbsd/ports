LBIN_DIR=${PREFIX}/bin
LCAT_DIR=${PREFIX}/man/cat1

all:posix crc

posix:
	$(CC) $(CFLAGS) -DPOSIX -DMD=2 rz.c -o rz
	$(CC) $(CFLAGS) -DPOSIX sz.c -o sz

crc:
	$(CC) $(CFLAGS) crc.c -o crc

install:
	install -cs -o bin -g bin -m 755 rz $(LBIN_DIR)
	ln -fs rz $(LBIN_DIR)/rx
	ln -fs rz $(LBIN_DIR)/rb
	ln -fs rz $(LBIN_DIR)/rc
	install -cs -o bin -g bin -m 755 sz $(LBIN_DIR)
	ln -fs sz $(LBIN_DIR)/sx
	ln -fs sz $(LBIN_DIR)/sb
	ln -fs sz $(LBIN_DIR)/zcommand
	ln -fs sz $(LBIN_DIR)/zcommandi
	install -cs -o bin -g bin -m 755 crc $(LBIN_DIR)
	install -c -o bin -g bin -m 644 crc.doc $(LCAT_DIR)/crc.1
	install -c -o bin -g bin -m 644 rz.doc $(LCAT_DIR)/rz.1
	ln -fs rz.1 $(LCAT_DIR)/rx.1
	ln -fs rz.1 $(LCAT_DIR)/rb.1
	ln -fs rz.1 $(LCAT_DIR)/rc.1
	install -c -o bin -g bin -m 644 sz.doc $(LCAT_DIR)/sz.1
	ln -fs sz.1 $(LCAT_DIR)/sx.1
	ln -fs sz.1 $(LCAT_DIR)/sb.1
	ln -fs sz.1 $(LCAT_DIR)/zcommand.1
	ln -fs sz.1 $(LCAT_DIR)/zcommandi.1

clean:
	rm -f core* rz sz crc


#
# Makefile wrapper for nessus.
#
# dugsong@monkey.org

all:
	@for dir in y0y0y0 ; do \
	   echo "" ; \
	   echo "===>  Building $$dir" ; \
	   (cd $$dir ; make $@) ; \
	done

install:
	@for dir in y0y0y0 ; do \
	   echo "" ; \
	   echo "===>  Installing $$dir" ; \
	   (cd $$dir ; make prefix=${PREFIX} sysconfdir=${PREFIX}/share/examples/nessus $@) ; \
	done


#
# Makefile wrapper for nessus.
#
# dugsong@monkey.org

all:
	@for dir in y0y0y0 ; do \
	   echo "===>   Building $$dir" ; \
	   (cd $$dir ; make $@) ; \
	done

install:
	@for dir in y0y0y0 ; do \
	   echo "===>   Installing $$dir" ; \
	   (cd $$dir ; \
	    make prefix=${PREFIX} \
		localstatedir=${WRKINST}/var/nessus \
	    	sysconfdir=${PREFIX}/share/examples/nessus \
		$@) ; \
	done


#
#   Makefile wrapper for nessus
#
#   Original by dug song <dugsong@monkey.org>
#   Enhanced by Matt Behrens <matt@openbsd.org>
#

all:
	@for dir in @@NESSUS_DIRS@@ ; do \
	   echo "===>   Building $$dir" ; \
	   (cd $$dir ; make $@) ; \
	done

install:
	@for dir in @@NESSUS_DIRS@@ ; do \
	   echo "===>   Installing $$dir" ; \
	   (cd $$dir ; \
	    make prefix=${PREFIX} \
		localstatedir=${WRKINST}/var/nessus \
	    	sysconfdir=${PREFIX}/share/examples/nessus \
		$@) ; \
	done


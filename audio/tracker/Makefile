# $OpenBSD: Makefile,v 1.6 1999/04/01 06:20:03 brad Exp $

DISTNAME=       tracker-5.3
CATEGORIES=     audio

MAINTAINER=     espie@openbsd.org

MASTER_SITES=   ftp://ftp.ens.fr/pub/dmi/users/espie/beta/
EXTRACT_SUFX=   .tgz

WRKSRC=         ${WRKDIR}/tracker
USE_GMAKE=      yes
PATCH_STRIP=-p2
MAKE_FLAGS=     MACHINE=openbsd CC=$(CC) INSTALL="$(INSTALL)" \
		INST_BIN_OPT="-c -s -m $(BINMODE) -o $(BINOWN) -g $(BINGRP)" \
		INST_MAN_OPT="-c -m 644 -o $(BINOWN) -g $(BINGRP)" \
		COMPRESSION_FILE=$(PREFIX)/etc/compression_methods \
		-f

post-extract:
	mkdir ${WRKSRC}/Arch/OpenBSD
	cp files/audio.c files/config.h ${WRKSRC}/Arch/OpenBSD

post-install:
	cd ${WRKSRC}/Docs && \
	makeinfo --no-split tracker.texinfo -o tracker.info && \
	$(INSTALL_MAN) tracker.info ${PREFIX}/info && \
	rm -f tracker.info *.orig
	-${MKDIR} ${PREFIX}/share/doc/tracker
	cp -R ${WRKSRC}/Docs/* ${PREFIX}/share/doc/tracker

# there is a small test module included. This target tests that
# - tracker correctly handles compressed files (only after install),
# - tracker doesn't crash on random files,
# - tracker plays some music.
test:
	cd ${WRKSRC} && /bin/sh ${FILESDIR}/test.uu && tracker *

.include <bsd.port.mk>

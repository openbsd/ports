# OpenBSD makefile for: tracker
# Version required:     5.3
# Date created:         May 21 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/10/02 17:19:44 espie Exp $
#

DISTNAME=       tracker-5.3
CATEGORIES=     audio
MASTER_SITES=   ftp://ftp.ens.fr/pub/dmi/users/espie/beta/
EXTRACT_SUFX=   .tgz

MAINTAINER=     espie@openbsd.org


# No restriction, but ONLY for OpenBSD, not Free, nor NetBSD.
#RESTRICTED=     "Non-redistributable beta"

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

.include <bsd.port.mk>

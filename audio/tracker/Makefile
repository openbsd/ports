# OpenBSD makefile for: tracker
# Version required:     5.3
# Date created:         May 21 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/22 01:00:50 angelos Exp $
#

DISTNAME=       tracker-5.3
CATEGORIES=     audio
MASTER_SITES=   ftp://ftp.ens.fr/pub/dmi/users/espie/beta/
EXTRACT_SUFX=   .tgz

MAINTAINER=     angelos@openbsd.org

RESTRICTED=     "Non-redistributable beta"

WRKSRC=         ${WRKDIR}/tracker
USE_GMAKE=      yes
MAKE_FLAGS=     MACHINE=freebsd CC=$(CC) INSTALL="$(INSTALL)" \
		INST_BIN_OPT="-c -s -m $(BINMODE) -o $(BINOWN) -g $(BINGRP)" \
		INST_MAN_OPT="-c -m 644 -o $(BINOWN) -g $(BINGRP)" \
		COMPRESSION_FILE=$(PREFIX)/etc/compression_methods \
		-f

post-install:
	cd ${WRKSRC}/Docs && \
	makeinfo --no-split tracker.texinfo -o tracker.info && \
	gzip -f tracker.info && \
	$(INSTALL_MAN) tracker.info.gz ${PREFIX}/info && \
	rm -f tracker.info.gz *.orig
	-${MKDIR} ${PREFIX}/share/doc/tracker
	cp -R ${WRKSRC}/Docs/* ${PREFIX}/share/doc/tracker

.include <bsd.port.mk>

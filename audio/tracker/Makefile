# $OpenBSD: Makefile,v 1.14 2000/06/10 17:39:24 espie Exp $

DISTNAME=	tracker-5.3
CATEGORIES=	audio
NEED_VERSION=	1.195
MASTER_SITES=	ftp://ftp.uni-trier.de/pub/unix/audio/tracker/
EXTRACT_SUFX=	.tgz

MAINTAINER=	espie@openbsd.org

USE_GMAKE=		Yes

# OpenBSD has a special exemption. Other BSD should contact me (Marc Espie) 
# for redistribution on the CD.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/tracker
PATCH_STRIP= 		-p2
MAKE_FLAGS=	MACHINE=openbsd CC=$(CC) INSTALL="$(INSTALL)" \
		INST_BIN_OPT="-c -s -m $(BINMODE) -o $(BINOWN) -g $(BINGRP)" \
		INST_MAN_OPT="-c -m 644 -o $(BINOWN) -g $(BINGRP)" \
		COMPRESSION_FILE='$${DESTDIR}/etc/compression_methods' \
		PREFIX='$${DESTDIR}/${PREFIX}'

FAKE_FLAGS=	${MAKE_FLAGS}

post-extract:
	@mkdir -p ${WRKSRC}/Arch/OpenBSD
	@cp files/audio.c files/config.h ${WRKSRC}/Arch/OpenBSD

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tracker
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/tracker
	@cd ${WRKSRC}/Docs && \
	makeinfo --no-split tracker.texinfo -o tracker.info && \
	$(INSTALL_MAN) tracker.info ${PREFIX}/info && \
	rm -f tracker.info *.orig
	cp -R ${WRKSRC}/Docs/* ${PREFIX}/share/doc/tracker
	cp ${WRKSRC}/Lib/compression_methods ${PREFIX}/lib/tracker/compression_methods.sample

# there is a small test module included. This target tests that
# - tracker correctly handles compressed files (only after install),
# - tracker doesn't crash on random files,
# - tracker plays some music.
test:
	@cd ${WRKSRC} && ${SH} ${FILESDIR}/test.uu && tracker *

.include <bsd.port.mk>

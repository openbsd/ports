# $OpenBSD: Makefile,v 1.19 2002/10/24 22:20:03 naddy Exp $

COMMENT=	MOD player
DISTNAME=	tracker-5.3
CATEGORIES=	audio

MASTER_SITES=	ftp://ftp.uni-trier.de/pub/unix/audio/tracker/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Espie <espie@openbsd.org>

# OpenBSD has a special exemption. Other BSD should contact me (Marc Espie) 
# for redistribution on the CD.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/tracker
MAKE_FLAGS=	MACHINE=openbsd CC=$(CC) INSTALL="$(INSTALL)" \
		CFLAGS_openbsd='-O3 -funroll-loops -finline-functions ${COPTS}' \
		INST_BIN_OPT="-c -s -m $(BINMODE) -o $(BINOWN) -g $(BINGRP)" \
		INST_MAN_OPT="-c -m 644 -o $(BINOWN) -g $(BINGRP)" \
		COMPRESSION_FILE='$${DESTDIR}/etc/compression_methods' \
		PREFIX='$${DESTDIR}/${PREFIX}'

NO_REGRESS=	Yes

FAKE_FLAGS=	${MAKE_FLAGS}

post-extract:
	@mkdir -p ${WRKSRC}/Arch/OpenBSD
	@cp files/{audio.c,config.h} ${WRKSRC}/Arch/OpenBSD

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tracker
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/tracker
	@cd ${WRKSRC}/Docs && \
	    makeinfo --no-split tracker.texinfo -o tracker.info && \
	$(INSTALL_MAN) tracker.info ${PREFIX}/info && \
	    rm -f tracker.info *.orig
	cp -R ${WRKSRC}/Docs/* ${PREFIX}/share/doc/tracker
	${INSTALL_DATA} ${WRKSRC}/Lib/compression_methods ${PREFIX}/lib/tracker/compression_methods.sample

# there is a small test module included. This target tests that
# - tracker correctly handles compressed files (only after install),
# - tracker doesn't crash on random files,
# - tracker plays some music.
test:
	@cd ${WRKSRC} && ${SH} ${FILESDIR}/test.uu && tracker *

.include <bsd.port.mk>

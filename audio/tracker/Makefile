# $OpenBSD: Makefile,v 1.35 2019/07/12 20:43:41 sthen Exp $

COMMENT =	MOD player
DISTNAME =	tracker-5.3
REVISION =	4
CATEGORIES =	audio

MASTER_SITES =	ftp://ftp.uni-trier.de/pub/unix/audio/tracker/
EXTRACT_SUFX =	.tgz

MAINTAINER =	Marc Espie <espie@openbsd.org>

# OpenBSD has a special exemption. Other BSD should contact me (Marc Espie) 
# for redistribution on the CD.
PERMIT_PACKAGE =	Yes

WANTLIB =		c m sndio

WRKDIST =		${WRKDIR}/tracker
MAKE_FLAGS =	MACHINE=openbsd CC=$(CC) INSTALL="$(INSTALL)" \
		CFLAGS_openbsd='-O3 -funroll-loops -finline-functions ${COPTS}' \
		LIBS_openbsd='-lm -lsndio' \
		INST_BIN_OPT="-c -s -m $(BINMODE) -o $(BINOWN) -g $(BINGRP)" \
		INST_MAN_OPT="-c -m 644 -o $(BINOWN) -g $(BINGRP)" \
		COMPRESSION_FILE='$${DESTDIR}${SYSCONFDIR}/compression_methods' \
		PREFIX='$${DESTDIR}/${TRUEPREFIX}'

NO_TEST =	Yes


post-extract:
	@mkdir -p ${WRKSRC}/Arch/OpenBSD
	@cp ${FILESDIR}/{audio.c,config.h} ${WRKSRC}/Arch/OpenBSD

pre-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${SYSCONFDIR}

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
	@cd ${WRKSRC} && /bin/sh ${FILESDIR}/test.uu && tracker *

.include <bsd.port.mk>

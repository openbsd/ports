# $OpenBSD: Makefile,v 1.9 1999/09/06 18:46:47 brad Exp $

DISTNAME=	tracker-5.3
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.uni-trier.de/pub/unix/audio/tracker/
EXTRACT_SUFX=	.tgz

MAINTAINER=	espie@openbsd.org

USE_GMAKE=	yes

WRKSRC=		${WRKDIR}/tracker
PATCH_STRIP= 	-p2
MAKE_FLAGS=	MACHINE=openbsd CC=$(CC) INSTALL="$(INSTALL)" \
		INST_BIN_OPT="-c -s -m $(BINMODE) -o $(BINOWN) -g $(BINGRP)" \
		INST_MAN_OPT="-c -m 644 -o $(BINOWN) -g $(BINGRP)" \
		COMPRESSION_FILE=/etc/compression_methods -f

post-extract:
	@${MKDIR} ${WRKSRC}/Arch/OpenBSD
	@${CP} files/audio.c files/config.h ${WRKSRC}/Arch/OpenBSD

post-install:
	@${MKDIR} ${PREFIX}/share/doc/tracker
	@${MKDIR} ${PREFIX}/lib/tracker
	@cd ${WRKSRC}/Docs && \
	makeinfo --no-split tracker.texinfo -o tracker.info && \
	$(INSTALL_MAN) tracker.info ${PREFIX}/info && \
	${RM} -f tracker.info *.orig
	${CP} -R ${WRKSRC}/Docs/* ${PREFIX}/share/doc/tracker
	${CP} ${WRKSRC}/Lib/compression_methods ${PREFIX}/lib/tracker/compression_methods.sample

# there is a small test module included. This target tests that
# - tracker correctly handles compressed files (only after install),
# - tracker doesn't crash on random files,
# - tracker plays some music.
test:
	@cd ${WRKSRC} && ${SH} ${FILESDIR}/test.uu && tracker *

.include <bsd.port.mk>

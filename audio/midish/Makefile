# $OpenBSD: Makefile,v 1.20 2015/07/30 16:35:22 ratchov Exp $

COMMENT=		command line MIDI sequencer and filter
DISTNAME=		midish-1.1.1
CATEGORIES=		audio
HOMEPAGE=		http://www.midish.org/
MAINTAINER=		Alexandre Ratchov <alex@caoua.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}
WANTLIB=		c ncurses readline sndio
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix=${PREFIX}
NO_TEST=		Yes
MAKE_FLAGS=		CC="${CC}"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/midish ${WRKBUILD}/rmidish ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/smfplay ${WRKSRC}/smfrec ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_MAN} midish.1 rmidish.1 smfplay.1 smfrec.1 \
		${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/midish
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/manual.html \
	        ${PREFIX}/share/doc/midish
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/midish
	${INSTALL_DATA} ${WRKSRC}/midishrc ${WRKSRC}/sample.sng \
		${PREFIX}/share/examples/midish

.include <bsd.port.mk>

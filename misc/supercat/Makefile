# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:54 sthen Exp $

COMMENT=	colorize specific patterns in input

DISTNAME=	supercat-0.5.6
CATEGORIES=	misc
REVISION=	0

HOMEPAGE=	http://supercat.nosredna.net/
MASTER_SITES=	${HOMEPAGE}

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=		c

CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/spc ${PREFIX}/bin/spc
	${INSTALL_MAN} ${WRKSRC}/doc/spc.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/supercat/
	${INSTALL_DATA} ${WRKSRC}/spcrc/spcrc-* \
		${PREFIX}/share/examples/supercat

.include <bsd.port.mk>

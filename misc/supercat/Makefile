# $OpenBSD: Makefile,v 1.6 2015/01/22 17:47:51 naddy Exp $

COMMENT=	colorize specific patterns in input

DISTNAME=	supercat-0.5.5
REVISION =	0
CATEGORIES=	misc

HOMEPAGE=	http://supercat.nosredna.net/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/spc ${PREFIX}/bin/spc
	${INSTALL_MAN} ${WRKSRC}/doc/spc.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/supercat/
	${INSTALL_DATA} ${WRKSRC}/spcrc/spcrc-* \
		${PREFIX}/share/examples/supercat

.include <bsd.port.mk>

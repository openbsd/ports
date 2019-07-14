# $OpenBSD: Makefile,v 1.20 2019/07/14 00:39:37 naddy Exp $

COMMENT=	UCB's MPEG-I video stream encoder

DISTNAME=	mpeg_encode-1.5b-src
PKGNAME=	${DISTNAME:S/-src//}
REVISION=	1
CATEGORIES=	graphics

# BSD
PERMIT_PACKAGE=     Yes
WANTLIB=		c m jpeg>=62

MASTER_SITES=	http://bmrc.berkeley.edu/ftp/pub/multimedia/mpeg/encode/

LIB_DEPENDS=    graphics/jpeg

WRKDIST=	${WRKDIR}/mpeg_encode

TEST_TARGET=	test_all

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mpeg_encode ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/mpeg_encode.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mpeg_encode
.for i in users-guide.ps template.param
	${INSTALL_DATA} ${WRKSRC}/docs/${i} ${PREFIX}/share/doc/mpeg_encode
.endfor

.include <bsd.port.mk>

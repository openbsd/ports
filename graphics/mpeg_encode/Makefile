# $OpenBSD: Makefile,v 1.5 2002/11/02 22:34:05 naddy Exp $
# $FreeBSD: ports/graphics/mpeg_encode/Makefile,v 1.11 2000/10/28 13:05:25 lioux Exp $

COMMENT=	"UCB's MPEG-I video stream encoder"

DISTNAME=	mpeg_encode-1.5b-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	graphics

# BSD
PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     No
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=   No

MASTER_SITES=	ftp://mm-ftp.CS.Berkeley.EDU/pub/multimedia/mpeg/encode/

LIB_DEPENDS=    jpeg.62::graphics/jpeg

WRKDIST=	${WRKDIR}/mpeg_encode

REGRESS_TARGET=	test_all

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mpeg_encode ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/mpeg_encode.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mpeg_encode
.for i in users-guide.ps template.param
	${INSTALL_DATA} ${WRKSRC}/docs/${i} ${PREFIX}/share/doc/mpeg_encode
.endfor

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.3 2002/03/21 20:57:08 espie Exp $
# $FreeBSD: ports/graphics/mpeg_encode/Makefile,v 1.11 2000/10/28 13:05:25 lioux Exp $
#

COMMENT=	"UCB's MPEG-I video stream encoder"

BASENAME=	mpeg_encode
PKGNAME=	${BASENAME}
DISTNAME=	${BASENAME}-1.5b-src
CATEGORIES=	graphics
NEED_VERSION=   1.515

# BSD
PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     No
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=   No

MASTER_SITES=	ftp://mm-ftp.CS.Berkeley.EDU/pub/multimedia/mpeg/encode/

LIB_DEPENDS=    jpeg.62::graphics/jpeg

WRKDIST=	${WRKDIR}/${BASENAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mpeg_encode ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/mpeg_encode.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${BASENAME}
.for i in users-guide.ps template.param
	${INSTALL_DATA} ${WRKSRC}/docs/${i} ${PREFIX}/share/doc/${BASENAME}
.endfor

.include <bsd.port.mk>

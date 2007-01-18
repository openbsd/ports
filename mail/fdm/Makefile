# $OpenBSD: Makefile,v 1.1.1.1 2007/01/18 21:47:01 steven Exp $

COMMENT=	"fetch, filter and deliver mail"

DISTNAME=	fdm-0.8a
CATEGORIES=	mail

HOMEPAGE=       http://fdm.sourceforge.net/
MAINTAINER=     Nicholas Marriott <nicm@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= c crypto ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fdm/}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fdm
	${INSTALL_DATA} ${WRKSRC}/MANUAL ${PREFIX}/share/doc/fdm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fdm
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/fdm

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2009/06/06 04:53:39 ajacoutot Exp $

COMMENT=	turns your keyboard into an fast pointer mover

DISTNAME=	keynav-20080614.01
PKGNAME=	${DISTNAME:S/.//}p0
CATEGORIES=	x11

HOMEPAGE=	http://www.semicomplete.com/projects/keynav/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://semicomplete.googlecode.com/files/

USE_X11=	Yes
WANTLIB=	X11 Xau Xdmcp Xext Xtst c
NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/keynav ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/keynav
	${INSTALL_DATA} ${WRKSRC}/keynavrc ${PREFIX}/share/examples/keynav/

.include <bsd.port.mk>

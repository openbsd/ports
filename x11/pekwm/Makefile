# $OpenBSD: Makefile,v 1.6 2005/02/14 00:35:54 pvalchev Exp $

COMMENT=	"aewm++ based pretty themable window manager"

VERSION=	0.1.1
DISTNAME=	pekwm-${VERSION}
CATEGORIES=	x11

HOMEPAGE=	http://pekwm.babblica.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m stdc++

MASTER_SITES=		${HOMEPAGE}files/source/

USE_X11= 		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix=${LOCALBASE}
NO_REGRESS=		Yes
USE_GMAKE=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pekwm
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/pekwm

.include <bsd.port.mk>

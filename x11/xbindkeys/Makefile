# $OpenBSD: Makefile,v 1.6 2009/08/10 21:17:50 steven Exp $

COMMENT=	bind keys or mouse buttons to shell commands under X11
DISTNAME=	xbindkeys-1.8.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

HOMEPAGE=	http://hocwp.free.fr/xbindkeys/xbindkeys.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://hocwp.free.fr/xbindkeys/

WANTLIB=	X11 c
MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}
USE_X11=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-guile

pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/xbindkeys_show

.include <bsd.port.mk>

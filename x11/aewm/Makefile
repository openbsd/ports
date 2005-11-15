# $OpenBSD: Makefile,v 1.15 2005/11/15 09:21:52 wilfried Exp $

DISTNAME=	aewm-1.3.0
PKGNAME=	${DISTNAME}p2
CATEGORIES=	x11

# X11/9wm
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xaw Xext Xt c \
			atk-1.0.0.0 cairo fontconfig freetype m glib-2.0.0.0 \
			gmodule-2.0.0.0 gobject-2.0.0.0 pango-1.0.0.0 \
			pangocairo-1.0.0.0 pangoft2-1.0.0.0

COMMENT=	"minimalistic window manager for X11"
HOMEPAGE=	http://www.red-bean.com/~decklin/aewm/
MASTER_SITES=	${HOMEPAGE}

USE_GMAKE=	Yes
USE_X11=	Yes
MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
NO_REGRESS=	Yes

.include <bsd.port.mk>

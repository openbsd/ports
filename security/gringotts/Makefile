# $OpenBSD: Makefile,v 1.5 2009/08/10 06:34:29 kili Exp $

COMMENT=	GTK+2 secure notes manager

DISTNAME=	gringotts-1.2.9
CATEGORIES=	security
PKGNAME=	${DISTNAME}p2

HOMEPAGE=	http://gringotts.berlios.de/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z

MASTER_SITES=	http://download.berlios.de/gringotts/

MODULES=        devel/gettext
LIB_DEPENDS=	gdk-x11-2.0.>=1200,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		gringotts::security/libgringotts \
		popt::devel/popt

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-env-check \
		--enable-root-filter \
		--enable-attach-limit \
		--with-x

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.6 2011/05/28 08:15:53 ajacoutot Exp $

COMMENT=		collection of extensions for Epiphany

GNOME_PROJECT=		epiphany-extensions
GNOME_VERSION=		3.0.0
REVISION=		6

# sync with www/epiphany
M=		${GNOME_VERSION:R}
SUBST_VARS=	M

CATEGORIES=		www

HOMEPAGE=		http://projects.gnome.org/epiphany/extensions

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += cairo cairo-gobject drm enchant expat fontconfig freetype
WANTLIB += gailutil-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstapp-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 icudata icui18n icuuc jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs soup-2.4
WANTLIB += sqlite3 stdc++ webkitgtk-3.0 xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/epiphany>=3.0.3
LIB_DEPENDS=	www/webkit,gtk3

LIBTOOL_FLAGS=	--tag=disable-static

MODGNOME_HELP_FILES=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--enable-opensp=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \

.include <bsd.port.mk>

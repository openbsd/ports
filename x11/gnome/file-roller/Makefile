# $OpenBSD: Makefile,v 1.29 2009/10/12 19:01:08 jasper Exp $

COMMENT=		archive manager for GNOME

GNOME_PROJECT=		file-roller
GNOME_VERSION=		2.28.0

CATEGORIES=		archivers

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

RUN_DEPENDS=		::archivers/gtar \
			::archivers/xz \
			::archivers/unzip \
			::archivers/zip \
			::archivers/gcpio \
			:rpm2cpio-*|rpm-*:converters/rpm2cpio
LIB_DEPENDS=		nautilus-extension.>=1::x11/gnome/nautilus

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	file-roller

CONFIGURE_ARGS=		--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

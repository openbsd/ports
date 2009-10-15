# $OpenBSD: Makefile,v 1.8 2009/10/15 11:57:42 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	applications integration into Nautilus

GNOME_PROJECT=	nautilus-sendto
GNOME_VERSION=	2.28.0

CATEGORIES=	misc net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::net/gajim \
		::net/pidgin

RUN_DEPENDS=		::archivers/zip \
			::archivers/bzip2
LIB_DEPENDS=		nautilus-extension.>=2::x11/gnome/nautilus \
			purple.>=4::net/pidgin,-libpurple

USE_X11=	Yes
MODGCONF2_SCHEMAS_DIR= nautilus-sendto

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--with-gajim=${LOCALBASE}

# --with-plugins=all ; needs older evolution and newer empathy
# allowed_plugins="bluetooth empathy evolution gajim nautilus-burn pidgin removable-devices upnp"
CONFIGURE_ARGS+= --with-plugins="gajim pidgin removable-devices"

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	schemadir=${PREFIX}/share/schemas/nautilus-sendto

.include <bsd.port.mk>

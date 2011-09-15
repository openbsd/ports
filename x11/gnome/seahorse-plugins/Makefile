# $OpenBSD: Makefile,v 1.27 2011/09/15 08:09:28 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	plugins and utilities for seahorse

GNOME_PROJECT=	seahorse-plugins
GNOME_VERSION=	2.91.6

REVISION=	1

# XXX until we have a stable 3.X release
MASTER_SITES=	http://distfiles.bsdfrog.org/

CATEGORIES=	security

HOMEPAGE=	http://projects.gnome.org/seahorse/

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject cryptui dbus-1 dbus-glib-1 drm
WANTLIB += expat fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 gtk-3 m nautilus-extension
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z assuan

LIB_DEPENDS=	x11/gnome/seahorse>=3.0.0 \
		x11/gnome/nautilus

RUN_DEPENDS=	misc/shared-mime-info>=0.21

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	seahorse-plugins

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-update-mime-database \
		--disable-cpp-rtti \
		--disable-applet \
		--with-gtk=3.0
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# the plugin needs a gecko epiphany, ours uses webkit
CONFIGURE_ARGS+= --disable-epiphany

# XXX gedit>=3 not supported yet
#BUILD_DEPENDS=	x11/gnome/gedit
CONFIGURE_ARGS += --disable-gedit

.include <bsd.port.mk>

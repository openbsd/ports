# $OpenBSD: Makefile,v 1.55 2011/04/28 13:10:57 ajacoutot Exp $

COMMENT-main=	configuration database system for GNOME
COMMENT-polkit=	PolicyKit integration for GConf2

GNOME_PROJECT=	GConf
GNOME_VERSION=	2.32.3

PKGNAME-main=	gconf2-${GNOME_VERSION}
PKGNAME-polkit=	gconf2-polkit-${GNOME_VERSION}

REVISION-polkit= 0

SHARED_LIBS +=	gconf-2              6.2      # 5.5

CATEGORIES=	devel
CATEGORIES-polkit= devel sysutils

HOMEPAGE=	http://www.gnome.org/projects/gconf/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread z

WANTLIB-main += ${WANTLIB} gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0
WANTLIB-main += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-main += Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 expat
WANTLIB-main += fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 xcb-shm
WANTLIB-main += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB-main += xcb xcb-render z ORBit-2 xml2 dbus-glib-1 GL Xxf86vm drm

WANTLIB-polkit += ${WANTLIB} gconf-2 polkit-gobject-1
WANTLIB-polkit += ORBit-2 c dbus-1 dbus-glib-1 gio-2.0 glib-2.0
WANTLIB-polkit += gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread z

MODULES=	devel/gettext \
		x11/gnome

MULTI_PACKAGES=	-main -polkit

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		x11/gtk+2 \
		devel/ORBit2 \
		textproc/libxml \
		x11/dbus-glib

LIB_DEPENDS-polkit= ${LIB_DEPENDS} \
		devel/gconf2 \
		sysutils/polkit

CONFIGURE_STYLE=gnu
CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--with-gtk=2.0 \
		--without-openldap \
		--enable-introspection \
		--enable-defaults-service
USE_GROFF =	Yes

FAKE_FLAGS=	sysgconfdir=${PREFIX}/share/examples/gconf2 \
		sysconfdir=${PREFIX}/share/examples/gconf2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gsettings/gsettings-data-convert.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/

.include <bsd.port.mk>

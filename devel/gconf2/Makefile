# $OpenBSD: Makefile,v 1.65 2011/09/20 21:04:24 jasper Exp $

COMMENT-main=	configuration database system for GNOME
COMMENT-polkit=	PolicyKit integration for GConf2
COMMENT-gtk=	GConf2 configuration checker

GNOME_PROJECT=	GConf
GNOME_VERSION=	2.32.4
PKGNAME=	gconf2-${GNOME_VERSION}

PKGNAME-main=	gconf2-${GNOME_VERSION}
PKGNAME-polkit=	gconf2-polkit-${GNOME_VERSION}
PKGNAME-gtk=	gconf2-sanity-check-${GNOME_VERSION}

REVISION-main=	2
REVISION-gtk=	3
REVISION-polkit=2

SHARED_LIBS +=	gconf-2              6.2      # 5.5

CATEGORIES=	devel
CATEGORIES-polkit= devel sysutils
CATEGORIES-gtk= devel x11

HOMEPAGE=	http://www.gnome.org/projects/gconf/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread z

WANTLIB-main += ${WANTLIB} ORBit-2 m xml2 dbus-1 dbus-glib-1

WANTLIB-polkit += ${WANTLIB} gconf-2 polkit-gobject-1
WANTLIB-polkit += ORBit-2 c dbus-1 dbus-glib-1 gio-2.0 glib-2.0
WANTLIB-polkit += gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread z
WANTLIB-polkit += dbus-1 dbus-glib-1

WANTLIB-gtk += ${WANTLIB}
WANTLIB-gtk += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB-gtk += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB-gtk += cairo drm expat fontconfig freetype gconf-2
WANTLIB-gtk += gdk_pixbuf-2.0 m pango-1.0 pangocairo-1.0
WANTLIB-gtk += pangoft2-1.0 pixman-1 png pthread-stubs xcb xcb-render
WANTLIB-gtk += xcb-shm xml2 cairo-gobject gdk-3 gtk-3

MODULES=	devel/gettext \
		x11/gnome

# needed for gsettings-schema-convert(1)
MODULES+=	lang/python
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=gsettings/gsettings-schema-convert

MULTI_PACKAGES=	-main -polkit -gtk

RUN_DEPENDS-main= ${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-main= ${LIB_DEPENDS} \
		devel/ORBit2 \
		textproc/libxml \
		x11/dbus-glib

RUN_DEPENDS-polkit= # empty
LIB_DEPENDS-polkit= ${LIB_DEPENDS} \
		devel/gconf2 \
		sysutils/polkit

RUN_DEPENDS-gtk= # empty
LIB_DEPENDS-gtk= ${LIB_DEPENDS} \
		devel/gconf2 \
		x11/gtk+3

MODGNOME_TOOLS= 	goi

CONFIGURE_STYLE=gnu
CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--without-openldap \
		--enable-defaults-service \
		--with-gtk=3.0

USE_GROFF=	Yes

FAKE_FLAGS=	sysgconfdir=${PREFIX}/share/examples/gconf2 \
		sysconfdir=${PREFIX}/share/examples/gconf2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gsettings/gsettings-data-convert.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.68 2011/09/28 09:51:35 jasper Exp $

COMMENT-main=	configuration database system for GNOME
COMMENT-polkit=	PolicyKit integration for GConf2

GNOME_PROJECT=	GConf
GNOME_VERSION=	3.2.0
PKGNAME=	gconf2-${GNOME_VERSION}

PKGNAME-main=	gconf2-${GNOME_VERSION}
PKGNAME-polkit=	gconf2-polkit-${GNOME_VERSION}

REVISION-main=	0
REVISION-polkit=0

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

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 ffi
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread z

WANTLIB-main += ${WANTLIB} ORBit-2 m xml2 dbus-1 dbus-glib-1

WANTLIB-polkit += ${WANTLIB} gconf-2 polkit-gobject-1
WANTLIB-polkit += ORBit-2 c dbus-1 dbus-glib-1 gio-2.0 glib-2.0
WANTLIB-polkit += gmodule-2.0 gobject-2.0 gthread-2.0 pcre pthread z
WANTLIB-polkit += dbus-1 dbus-glib-1

MODULES=	devel/gettext \
		x11/gnome

# needed for gsettings-schema-convert(1) (-main)
MODULES+=	lang/python
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=gsettings/gsettings-schema-convert

MULTI_PACKAGES=	-main -polkit

RUN_DEPENDS-main= ${MODGETTEXT_RUN_DEPENDS} \
		${MODPY_RUN_DEPENDS}
LIB_DEPENDS-main= ${LIB_DEPENDS} \
		devel/ORBit2 \
		textproc/libxml \
		x11/dbus-glib

RUN_DEPENDS-polkit= # empty
LIB_DEPENDS-polkit= ${LIB_DEPENDS} \
		devel/gconf2 \
		sysutils/polkit

MODGNOME_TOOLS=	goi

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-openldap \
		--enable-defaults-service \
		--disable-gtk

FAKE_FLAGS=	sysgconfdir=${PREFIX}/share/examples/gconf2 \
		sysconfdir=${PREFIX}/share/examples/gconf2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gsettings/gsettings-data-convert.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.84 2013/09/27 17:33:20 ajacoutot Exp $

COMMENT-main=	configuration database system for GNOME

GNOME_PROJECT=	GConf
GNOME_VERSION=	3.2.6
PKGNAME-main=	gconf2-${GNOME_VERSION}

REVISION-main=	1

SHARED_LIBS +=	gconf-2              6.2      # 5.5

CATEGORIES=	devel

HOMEPAGE=	http://www.gnome.org/projects/gconf/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 ffi
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread z
WANTLIB += m xml2 dbus-1 dbus-glib-1

MODULES=	devel/gettext \
		x11/gnome

# needed for gsettings-schema-convert(1) (-main)
MODULES+=	lang/python
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=gsettings/gsettings-schema-convert

MULTI_PACKAGES=	-main

RUN_DEPENDS-main= ${MODGETTEXT_RUN_DEPENDS} \
		${MODPY_RUN_DEPENDS}
LIB_DEPENDS-main= ${LIB_DEPENDS} \
		textproc/libxml \
		x11/dbus-glib

MODGNOME_TOOLS=	gi

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-openldap \
		--disable-gtk \
		--disable-orbit

FAKE_FLAGS=	sysgconfdir=${PREFIX}/share/examples/gconf2 \
		sysconfdir=${PREFIX}/share/examples/gconf2

CONFIGURE_ARGS+= --disable-defaults-service

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gsettings/gsettings-data-convert.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/
	rm ${PREFIX}/lib/GConf/2/*.{a,la}
	rm ${PREFIX}/lib/gio/modules/*.{a,la}

.include <bsd.port.mk>

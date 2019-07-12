# $OpenBSD: Makefile,v 1.97 2019/07/12 20:44:09 sthen Exp $

COMMENT=		configuration database system for GNOME

GNOME_PROJECT=		GConf
GNOME_VERSION=		3.2.6
PKGNAME=		gconf2-${GNOME_VERSION}
REVISION=		11

SHARED_LIBS +=  gconf-2              6.2      # 5.5

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 iconv intl lzma m pcre pthread xml2 z

MODULES=		x11/gnome

# needed for gsettings-schema-convert(1)
MODULES +=		lang/python
MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	gsettings/gsettings-schema-convert

LIB_DEPENDS=		textproc/libxml \
			x11/dbus-glib

MODGNOME_TOOLS=		gobject-introspection

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-openldap \
			--disable-gtk \
			--disable-orbit \
			--disable-defaults-service

FAKE_FLAGS=		sysgconfdir=${PREFIX}/share/examples/gconf2 \
			sysconfdir=${PREFIX}/share/examples/gconf2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gsettings/gsettings-data-convert.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/
	rm ${PREFIX}/lib/GConf/2/*.{a,la}
	rm ${PREFIX}/lib/gio/modules/*.{a,la}

.include <bsd.port.mk>

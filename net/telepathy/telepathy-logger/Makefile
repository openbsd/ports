# $OpenBSD: Makefile,v 1.17 2011/03/25 09:13:43 ajacoutot Exp $

COMMENT=	flexible communications framework, logger component

DISTNAME=	telepathy-logger-0.1.7

REVISION=	0

SHARED_LIBS +=  telepathy-logger     1.0      # 1.0

MASTER_SITES=	${MASTER_SITES_TELEPATHY:=telepathy-logger/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool \
		devel/dconf

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pthread sqlite3 telepathy-glib xml2
WANTLIB += z

BUILD_DEPENDS=	devel/py-twisted/words \
		x11/gnome/doc-utils
LIB_DEPENDS=	databases/sqlite3 \
		net/telepathy/telepathy-glib \
		textproc/libxml \
		x11/dbus-glib

MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	telepathy-logger
MODPY_RUNDEP=		No

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-silent-rules \
			--disable-gtk-doc \
			--enable-shave

REGRESS_IS_INTERACTIVE=x11

.include <bsd.port.mk>

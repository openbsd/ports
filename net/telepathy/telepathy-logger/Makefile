# $OpenBSD: Makefile,v 1.32 2011/10/20 13:23:39 jasper Exp $

COMMENT=	flexible communications framework, logger component

DISTNAME=	telepathy-logger-0.2.10
REVISION=	0

SHARED_LIBS +=  telepathy-logger     3.0      # 4.0
SHARED_LIBS +=  tpl-extensions       0.0      # 2.0


HOMEPAGE=	${HOMEPAGE_TP:=Logger}

MASTER_SITES=	${MASTER_SITES_TP:=telepathy-logger/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool \
		devel/dconf

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre pthread sqlite3 telepathy-glib xml2
WANTLIB += z ffi

BUILD_DEPENDS=	devel/gobject-introspection \
		devel/py-twisted/words \
		x11/gnome/doc-utils
LIB_DEPENDS=	databases/sqlite3 \
		net/telepathy/telepathy-glib \
		textproc/libxml \
		x11/dbus-glib

MODGCONF2_SCHEMAS_DIR=	telepathy-logger
MODPY_RUNDEP=		No

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-call \
			--enable-public-extensions
CONFIGURE_ENV=		ac_cv_prog_PYTHON="${MODPY_BIN}"

REGRESS_IS_INTERACTIVE=x11

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.30 2011/10/19 08:19:00 jasper Exp $

COMMENT=	flexible communications framework, logger component

DISTNAME=	telepathy-logger-0.2.10

SHARED_LIBS +=  telepathy-logger     3.0      # 4.0

HOMEPAGE=	${HOMEPAGE_TP:=Logger}

MASTER_SITES=	${MASTER_SITES_TP:=telepathy-logger/}
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

MODGNOME_TOOLS= 	goi yelp
MODGCONF2_SCHEMAS_DIR=	telepathy-logger
MODPY_RUNDEP=		No

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-call
CONFIGURE_ENV=		ac_cv_prog_PYTHON="${MODPY_BIN}"

REGRESS_IS_INTERACTIVE=x11

.include <bsd.port.mk>

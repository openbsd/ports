# $OpenBSD: Makefile,v 1.26 2011/10/28 07:10:12 ajacoutot Exp $

COMMENT=		flexible communications framework, local-link component

DISTNAME=		telepathy-salut-0.4.0
REVISION=		2

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-salut/}

WANTLIB += avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pcre pthread soup-2.4 telepathy-glib
WANTLIB += xml2 z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		textproc/libxslt \
			devel/check
LIB_DEPENDS=		net/avahi \
			devel/libsoup \
			net/telepathy/telepathy-glib

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_prog_PYTHON="${MODPY_BIN}"
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

REGRESS_DEPENDS=	textproc/py-xmldiff

.include <bsd.port.mk>

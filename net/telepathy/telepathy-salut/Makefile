# $OpenBSD: Makefile,v 1.27 2011/11/02 10:08:51 ajacoutot Exp $

COMMENT=		flexible communications framework, local-link component

DISTNAME=		telepathy-salut-0.6.0

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-salut/}

WANTLIB += avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += c crypto dbus-1 dbus-glib-1 e2fs-uuid ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pcre pthread
WANTLIB += soup-2.4 sqlite3 ssl telepathy-glib xml2 z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		textproc/libxslt \
			devel/check
LIB_DEPENDS=		net/avahi \
			devel/libsoup \
			net/telepathy/telepathy-glib \
			sysutils/e2fsprogs

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/lib/ext/wocky

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_prog_PYTHON="${MODPY_BIN}"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-Werror \
			--with-tls=openssl

REGRESS_DEPENDS=	textproc/py-xmldiff

.include <bsd.port.mk>

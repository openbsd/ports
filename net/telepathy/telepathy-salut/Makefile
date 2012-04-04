# $OpenBSD: Makefile,v 1.29 2012/04/04 14:41:34 jasper Exp $

COMMENT=		flexible communications framework, local-link component

DISTNAME=		telepathy-salut-0.6.0
REVISION=		1

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-salut/}

WANTLIB += avahi-client avahi-common avahi-glib avahi-gobject
WANTLIB += c dbus-1 dbus-glib-1 e2fs-uuid ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gthread-2.0 hogweed
WANTLIB += m nettle p11-kit pcre pthread soup-2.4 sqlite3 tasn1
WANTLIB += telepathy-glib xml2 z

MODULES=		devel/gettext \
			lang/python
MODPY_RUNDEP=		No

BUILD_DEPENDS=		textproc/libxslt \
			devel/check
LIB_DEPENDS=		net/avahi \
			devel/libsoup \
			net/telepathy/telepathy-glib \
			sysutils/e2fsprogs

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/lib/ext/wocky

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-Werror

REGRESS_DEPENDS=	textproc/py-xmldiff

.include <bsd.port.mk>

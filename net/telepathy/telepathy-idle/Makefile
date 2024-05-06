COMMENT=		flexible communications framework, IRC component

DISTNAME=		telepathy-idle-0.2.2
REVISION=		0

SITES=			${SITES_TP:=telepathy-idle/}

WANTLIB += c dbus-1 dbus-glib-1 execinfo ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 iconv intl pcre2-8 pthread
WANTLIB += telepathy-glib z

MODULES=		lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/py-twisted${MODPY_FLAVOR} \
			textproc/libxslt

RUN_DEPENDS=		textproc/libxslt

LIB_DEPENDS=		net/telepathy/telepathy-glib

TEST_DEPENDS=		devel/py-twisted${MODPY_FLAVOR}

.include <bsd.port.mk>

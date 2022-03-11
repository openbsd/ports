COMMENT=		abstraction layer between apps and connection managers

DISTNAME=		telepathy-mission-control-5.16.6

SHARED_LIBS +=  mission-control-plugins 3.0      # 5.1

HOMEPAGE=		https://telepathy.freedesktop.org/components/telepathy-mission-control/

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-mission-control/}

WANTLIB =  c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl pcre pthread telepathy-glib z

MODULES=		devel/dconf \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		textproc/libxslt
LIB_DEPENDS=		net/telepathy/telepathy-glib>=0.18.0

# both are dependant
CONFIGURE_ARGS+=	--disable-upower \
			--with-connectivity=no

.include <bsd.port.mk>

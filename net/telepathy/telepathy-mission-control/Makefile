# $OpenBSD: Makefile,v 1.43 2013/09/27 17:34:43 jasper Exp $

COMMENT=		abstraction layer between apps and connection managers

DISTNAME=		telepathy-mission-control-5.14.1

SHARED_LIBS +=  mission-control-plugins 2.0      # 4.1

HOMEPAGE=		http://mission-control.sourceforge.net/

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-mission-control/}

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 pcre pthread z telepathy-glib ffi

MODULES=		devel/gettext \
			lang/python
MODPY_RUNDEP=		No

BUILD_DEPENDS=		textproc/libxslt
LIB_DEPENDS=		net/telepathy/telepathy-glib>=0.18.0

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-static

# both are dependant
CONFIGURE_ARGS+=	--disable-upower \
			--with-connectivity=no

.include <bsd.port.mk>

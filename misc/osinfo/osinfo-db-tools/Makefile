# $OpenBSD: Makefile,v 1.15 2022/02/15 10:30:23 ajacoutot Exp $

COMMENT=		tools to manage the libosinfo database

DISTNAME=		osinfo-db-tools-${V}

WANTLIB += archive c gio-2.0 glib-2.0 gobject-2.0 intl json-glib-1.0
WANTLIB += soup-3.0 xml2

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		archivers/libarchive \
			devel/json-glib \
			devel/libsoup3 \
			textproc/libxml

.include <bsd.port.mk>

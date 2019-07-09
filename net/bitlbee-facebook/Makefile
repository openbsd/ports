# $OpenBSD: Makefile,v 1.5 2019/07/09 10:56:07 kn Exp $

COMMENT=		Facebook Messenger protocol plugin for bitlbee
V=			1.2.0
DISTNAME=		bitlbee-facebook-$V
CATEGORIES=		net

HOMEPAGE=		https://github.com/bitlbee/bitlbee-facebook

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB +=		ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB +=		intl json-glib-1.0 pcre pthread z

MASTER_SITES=		https://github.com/bitlbee/bitlbee-facebook/releases/download/v$V/

BUILD_DEPENDS=		net/bitlbee
RUN_DEPENDS=		net/bitlbee
LIB_DEPENDS=		devel/json-glib

CONFIGURE_STYLE=	gnu
LIBTOOL_FLAGS=		--tag=disable-static

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2017/05/28 14:16:12 ajacoutot Exp $

COMMENT=		Facebook Messenger protocol plugin for bitlbee
V=			1.1.1
DISTNAME=		bitlbee-facebook-$V
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		https://github.com/bitlbee/bitlbee-facebook

MAINTAINER=		Michal Mazurek <akfaew@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=		ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB +=		intl json-glib-1.0 pcre pthread z

MASTER_SITES=		https://github.com/bitlbee/bitlbee-facebook/releases/download/v$V/

BUILD_DEPENDS=		net/bitlbee
RUN_DEPENDS=		net/bitlbee
LIB_DEPENDS=		devel/json-glib

CONFIGURE_STYLE=	gnu
LIBTOOL_FLAGS=		--tag=disable-static

.include <bsd.port.mk>

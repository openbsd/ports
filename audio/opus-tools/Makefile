# $OpenBSD: Makefile,v 1.11 2017/04/06 20:34:07 naddy Exp $

COMMENT=	encode, inspect, and decode Opus files

DISTNAME=	opus-tools-0.1.10
CATEGORIES=	audio

HOMEPAGE=	https://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/opus/ \
		https://ftp.mozilla.org/pub/mozilla.org/opus/

LIB_DEPENDS=	audio/flac audio/libogg audio/opus
WANTLIB=	FLAC c m ogg opus sndio

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-maintainer-mode

# OpenBSD uses PIE by default anyway on archs where it actually works
CONFIGURE_ARGS+=--disable-pie

.include <bsd.port.mk>

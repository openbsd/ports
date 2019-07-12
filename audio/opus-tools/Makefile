# $OpenBSD: Makefile,v 1.14 2019/07/12 20:43:37 sthen Exp $

COMMENT=	encode, inspect, and decode Opus files

DISTNAME=	opus-tools-0.2
CATEGORIES=	audio

HOMEPAGE=	https://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://archive.mozilla.org/pub/opus/

LIB_DEPENDS=	audio/flac \
		audio/libogg \
		audio/libopusenc \
		audio/opus \
		audio/opusfile
WANTLIB=	FLAC c crypto m ogg opus opusenc opusfile opusurl sndio ssl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-maintainer-mode

# Don't interfere with OpenBSD defaults
CONFIGURE_ARGS+=--disable-stack-protector --disable-pie

.include <bsd.port.mk>

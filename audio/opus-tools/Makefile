# $OpenBSD: Makefile,v 1.9 2015/09/10 21:09:11 naddy Exp $

COMMENT=	encode, inspect, and decode Opus files

DISTNAME=	opus-tools-0.1.9
REVISION=	0
CATEGORIES=	audio

HOMEPAGE=	http://opus-codec.org/

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

.include <bsd.port.mk>

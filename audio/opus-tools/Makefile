# $OpenBSD: Makefile,v 1.7 2013/12/15 22:21:38 naddy Exp $

COMMENT=	encode, inspect, and decode Opus files

DISTNAME=	opus-tools-0.1.8
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

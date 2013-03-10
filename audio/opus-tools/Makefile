# $OpenBSD: Makefile,v 1.6 2013/03/10 22:55:04 espie Exp $

COMMENT=	encode, inspect, and decode Opus files

DISTNAME=	opus-tools-0.1.6
CATEGORIES=	audio

HOMEPAGE=	http://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/opus/ \
		https://ftp.mozilla.org/pub/mozilla.org/opus/

LIB_DEPENDS=	audio/libogg audio/opus
WANTLIB=	c m ogg opus sndio

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

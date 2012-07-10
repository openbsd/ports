# $OpenBSD: Makefile,v 1.1.1.1 2012/07/10 12:12:37 naddy Exp $

COMMENT=	encode, inspect, and decode Opus files

DISTNAME=	opus-tools-0.1.2
CATEGORIES=	audio

HOMEPAGE=	http://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/opus/

LIB_DEPENDS=	audio/libogg audio/opus
WANTLIB=	c m ogg opus sndio

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-DUSE_SNDIO"
MAKE_FLAGS=	OSS_LIBS=-lsndio

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.29 2017/08/15 01:05:13 naddy Exp $

COMMENT=	patent-free speech codec

DISTNAME=	speex-1.2.0
CATEGORIES=	audio
HOMEPAGE=	https://speex.org/
SHARED_LIBS=	speex	8.0	# 6.1

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/speex/

LIB_DEPENDS=	audio/libogg \
		audio/speexdsp
WANTLIB=	c m ogg sndio speexdsp

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
# binaries are intended to be enabled by default, but the configure
# script is wrong
CONFIGURE_ARGS=	--enable-binaries
CONFIGURE_ENV=	CPPFLAGS="-DUSE_SNDIO"

.include <bsd.port.mk>

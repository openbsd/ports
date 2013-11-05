# $OpenBSD: Makefile,v 1.14 2013/11/05 07:49:29 jasper Exp $

COMMENT=		library for interfacing MPD

VER=			2.9
DISTNAME=		libmpdclient-${VER}
SHARED_LIBS=		mpdclient 2.0	# 2.9
CATEGORIES=		audio
HOMEPAGE=		http://www.musicpd.org/libs/libmpdclient/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# 3-BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.musicpd.org/download/libmpdclient/${VER:R}/

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-documentation

.include <bsd.port.mk>

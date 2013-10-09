# $OpenBSD: Makefile,v 1.13 2013/10/09 13:29:35 dcoppa Exp $

COMMENT=		library for interfacing MPD

VER=			2.8
DISTNAME=		libmpdclient-${VER}
SHARED_LIBS=		mpdclient 1.3	# 2.8
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

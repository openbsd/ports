# $OpenBSD: Makefile,v 1.15 2015/03/17 15:59:48 dcoppa Exp $

COMMENT=		library for interfacing MPD

VER=			2.10
DISTNAME=		libmpdclient-${VER}
SHARED_LIBS=		mpdclient 2.1	# 2.10
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

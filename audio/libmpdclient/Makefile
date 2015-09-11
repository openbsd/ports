# $OpenBSD: Makefile,v 1.16 2015/09/11 12:21:47 dcoppa Exp $

COMMENT=		library for interfacing MPD

VER=			2.10
DISTNAME=		libmpdclient-${VER}
REVISION=		0
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

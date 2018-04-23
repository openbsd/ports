# $OpenBSD: Makefile,v 1.20 2018/04/23 16:49:48 landry Exp $

COMMENT=		library for interfacing MPD

VER=			2.14
DISTNAME=		libmpdclient-${VER}
SHARED_LIBS=		mpdclient 3.0	# 2.13
CATEGORIES=		audio
HOMEPAGE=		https://www.musicpd.org/libs/libmpdclient/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# 3-BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://www.musicpd.org/download/libmpdclient/${VER:R}/

EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

.include <bsd.port.mk>

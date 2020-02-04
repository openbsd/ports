# $OpenBSD: Makefile,v 1.25 2020/02/04 18:24:26 bket Exp $

COMMENT=		library for interfacing MPD

VER=			2.18
DISTNAME=		libmpdclient-${VER}
SHARED_LIBS=		mpdclient 3.3	# 2.18
CATEGORIES=		audio
HOMEPAGE=		https://www.musicpd.org/libs/libmpdclient/

# 3-BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://www.musicpd.org/download/libmpdclient/${VER:R}/

EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

.include <bsd.port.mk>

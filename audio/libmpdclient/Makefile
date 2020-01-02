# $OpenBSD: Makefile,v 1.24 2020/01/02 09:36:49 bket Exp $

COMMENT=		library for interfacing MPD

VER=			2.17
DISTNAME=		libmpdclient-${VER}
SHARED_LIBS=		mpdclient 3.2	# 2.17
CATEGORIES=		audio
HOMEPAGE=		https://www.musicpd.org/libs/libmpdclient/

# 3-BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://www.musicpd.org/download/libmpdclient/${VER:R}/

EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

.include <bsd.port.mk>

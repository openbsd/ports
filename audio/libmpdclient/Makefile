# $OpenBSD: Makefile,v 1.26 2020/07/08 13:02:08 bket Exp $

COMMENT=		library for interfacing MPD

VER=			2.19
DISTNAME=		libmpdclient-${VER}
SHARED_LIBS=		mpdclient 3.4	# 2.19
CATEGORIES=		audio
HOMEPAGE=		https://www.musicpd.org/libs/libmpdclient/

# 3-BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://www.musicpd.org/download/libmpdclient/${VER:R}/

EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

.include <bsd.port.mk>

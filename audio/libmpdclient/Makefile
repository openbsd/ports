# $OpenBSD: Makefile,v 1.27 2022/03/05 09:32:04 landry Exp $

COMMENT=		library for interfacing MPD

VER=			2.20
DISTNAME=		libmpdclient-${VER}
SHARED_LIBS=		mpdclient 3.5	# 2.19
CATEGORIES=		audio
HOMEPAGE=		https://www.musicpd.org/libs/libmpdclient/

# 3-BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://www.musicpd.org/download/libmpdclient/${VER:R}/

EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.22 2019/04/24 16:26:54 sthen Exp $

COMMENT=		library for interfacing MPD

VER=			2.16
DISTNAME=		libmpdclient-${VER}
SHARED_LIBS=		mpdclient 3.1	# 2.13
CATEGORIES=		audio
HOMEPAGE=		https://www.musicpd.org/libs/libmpdclient/
REVISION=		0

# 3-BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://www.musicpd.org/download/libmpdclient/${VER:R}/

EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

.include <bsd.port.mk>

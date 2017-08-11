# $OpenBSD: Makefile,v 1.18 2017/08/11 08:57:16 dcoppa Exp $

COMMENT=		library for interfacing MPD

VER=			2.13
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

### XXX the meson MODULE should handle these
pre-configure:
	${SUBST_CMD} ${WRKSRC}/meson.build
post-install:
	rm ${PREFIX}/lib/libmpdclient.so
###

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.33 2020/01/02 09:37:10 bket Exp $

COMMENT=		command line client for mpd

VER=			0.33
DISTNAME=		mpc-${VER}
CATEGORIES=		audio
EXTRACT_SUFX=		.tar.xz

HOMEPAGE=		https://www.musicpd.org/clients/mpc/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c iconv mpdclient

LIB_DEPENDS=		audio/libmpdclient>=2.2 \
			converters/libiconv

BUILD_DEPENDS +=	textproc/py-sphinx
MASTER_SITES=		https://www.musicpd.org/download/mpc/${VER:R}/

MODULES=		devel/meson

CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib -liconv"

.include <bsd.port.mk>

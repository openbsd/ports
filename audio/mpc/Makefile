# $OpenBSD: Makefile,v 1.29 2019/03/27 23:28:00 ajacoutot Exp $

COMMENT=		command line client for mpd

VER=			0.31
DISTNAME=		mpc-${VER}
CATEGORIES=		audio
EXTRACT_SUFX=		.tar.xz

HOMEPAGE=		https://www.musicpd.org/clients/mpc/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c iconv mpdclient

LIB_DEPENDS=		audio/libmpdclient>=2.2 \
			converters/libiconv

BUILD_DEPENDS +=	textproc/py-sphinx
MASTER_SITES=		https://www.musicpd.org/download/mpc/${VER:R}/

MODULES=		devel/meson

CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib -liconv"

.include <bsd.port.mk>

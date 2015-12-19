# $OpenBSD: Makefile,v 1.8 2015/12/19 20:47:03 bentley Exp $

COMMENT=	Gadu-Gadu IM protocol client

DISTNAME=	ekg-1.7
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	http://ekg.chmurka.net/

MAINTAINER=	Aleksander Piotrowski <pelotasplus@gmail.com>

# GPLv2 - LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto gadu ncurses pthread ssl z

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	net/libgadu

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ARGS=	--enable-dynamic \
		--with-pthread \
		--without-libjpeg \
		--without-libgsm \
		--without-libungif

NO_TEST=	Yes

.include <bsd.port.mk>

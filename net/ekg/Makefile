# $OpenBSD: Makefile,v 1.7 2015/02/16 22:57:10 naddy Exp $

COMMENT=	Gadu-Gadu IM protocol client

DISTNAME=	ekg-1.7
REVISION=	0
CATEGORIES=	net

HOMEPAGE=	http://ekg.chmurka.net/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

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

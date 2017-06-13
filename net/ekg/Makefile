# $OpenBSD: Makefile,v 1.10 2017/06/13 07:43:15 fcambus Exp $

COMMENT=	Gadu-Gadu IM protocol client

DISTNAME=	ekg-1.7
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	http://ekg.chmurka.net/

MAINTAINER=	Aleksander Piotrowski <pelotasplus@gmail.com>

# GPLv2 - LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto gadu ncurses pthread ssl z

MASTER_SITES=	${HOMEPAGE}archive/

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

pre-configure:
	# External libgadu support
	@cd ${WRKSRC}/src && sed -i 's|"libgadu.h"|<libgadu.h>|' *.c *.h

.include <bsd.port.mk>

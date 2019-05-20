# $OpenBSD: Makefile,v 1.12 2019/05/20 20:52:34 sthen Exp $

COMMENT=	Gadu-Gadu IM protocol client

DISTNAME=	ekg-1.7
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	http://ekg.chmurka.net/

# GPLv2 - LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto gadu curses pthread ssl z

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

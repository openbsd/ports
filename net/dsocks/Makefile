# $OpenBSD: Makefile,v 1.20 2021/10/21 21:00:44 sthen Exp $

COMMENT=		SOCKS client wrapper for *BSD
DISTNAME=		dsocks-1.8
CATEGORIES=		net
SHARED_LIBS=		dsocks 1.0

HOMEPAGE=		http://monkey.org/~dugsong/dsocks/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_GOOGLECODE:=dsocks/}

MAKE_FLAGS=		CFLAGS="-Wall ${CFLAGS}" \
			SHLIB_MAJOR=${LIBdsocks_VERSION:R} \
			SHLIB_MINOR=${LIBdsocks_VERSION:E}

FAKE_FLAGS=		DEBUGLIBS=No
NO_TEST=		Ues

do-configure:
	${SUBST_CMD} ${WRKSRC}/dsocks.sh ${WRKSRC}/dsocks-torify.sh

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/dsocks.sh ${WRKSRC}/dsocks-torify.sh \
		${PREFIX}/bin

.include <bsd.port.mk>

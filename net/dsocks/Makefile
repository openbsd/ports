# $OpenBSD: Makefile,v 1.19 2019/07/17 14:46:33 danj Exp $

COMMENT=		SOCKS client wrapper for *BSD
DISTNAME=		dsocks-1.7
REVISION=		1
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

do-configure:
	${SUBST_CMD} ${WRKSRC}/dsocks.sh ${WRKSRC}/dsocks-torify.sh

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/dsocks.sh ${WRKSRC}/dsocks-torify.sh \
		${PREFIX}/bin

.include <bsd.port.mk>

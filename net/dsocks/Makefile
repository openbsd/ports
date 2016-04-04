# $OpenBSD: Makefile,v 1.12 2016/04/04 16:09:10 naddy Exp $

COMMENT=		SOCKS client wrapper for *BSD
DISTNAME=		dsocks-1.6
REVISION=		2
CATEGORIES=		net
SHARED_LIBS=		dsocks 1.0

HOMEPAGE=		http://monkey.org/~dugsong/dsocks/

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

MAKE_FLAGS=		SHLIB_MAJOR=${LIBdsocks_VERSION:R} \
			SHLIB_MINOR=${LIBdsocks_VERSION:E}

FAKE_FLAGS=		DEBUGLIBS=No

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dsocks.sh ${WRKSRC}/dsocks-torify.sh \
		${PREFIX}/bin

.include <bsd.port.mk>

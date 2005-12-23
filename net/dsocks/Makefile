# $OpenBSD: Makefile,v 1.4 2005/12/23 16:06:27 todd Exp $

COMMENT=		"SOCKS client wrapper for *BSD"
DISTNAME=		dsocks-1.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net
SHARED_LIBS=		dsocks 1.0

HOMEPAGE=		http://monkey.org/~dugsong/dsocks/

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

MAKE_FLAGS=		SHLIB_MAJOR=${LIBdsocks_VERSION:R} \
			SHLIB_MINOR=${LIBdsocks_VERSION:E}

FAKE_FLAGS=		SHLIB_MAJOR=${LIBdsocks_VERSION:R} \
			SHLIB_MINOR=${LIBdsocks_VERSION:E} \
			DEBUGLIBS=No

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dsocks.sh ${WRKSRC}/dsocks-torify.sh \
		${PREFIX}/bin

.include <bsd.port.mk>

COMMENT=	library for writing opensmtpd filters

V=		1.0
PKGNAME=	libopensmtpd-${V}
DISTNAME=	libopensmtpd-${V}

SHARED_LIBS=	opensmtpd 2.0

CATEGORIES=	mail
HOMEPAGE=	https://src.imperialat.at/?action=summary&path=libopensmtpd.git

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

SITES=		https://src.imperialat.at/releases/
INSTALL_TARGET=	includes install

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	event
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"
MAKE_FLAGS+=	LIBopensmtpd_VERSION="${LIBopensmtpd_VERSION}"

.include <bsd.port.mk>

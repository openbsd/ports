# $OpenBSD: Makefile,v 1.3 2019/12/06 12:57:40 martijn Exp $

COMMENT=	library for writing opensmtpd filters

V=		0.3
PKGNAME=	libopensmtpd-${V}
DISTNAME=	libopensmtpd-${V}

SHARED_LIBS=	opensmtpd 0.0

CATEGORIES=	mail
HOMEPAGE=	http://imperialat.at/dev/libopensmtpd

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

MASTER_SITES=	https://distfiles.nl/
INSTALL_TARGET=	includes install

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c event
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"
MAKE_FLAGS+=	LIBopensmtpd_VERSION="${LIBopensmtpd_VERSION}"

.include <bsd.port.mk>

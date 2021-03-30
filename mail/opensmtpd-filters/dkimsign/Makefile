# $OpenBSD: Makefile,v 1.7 2021/03/30 12:32:53 martijn Exp $

COMMENT=	dkim signer integration to the OpenSMTPD daemon

V=		0.4
FILTER_NAME =	dkimsign
DISTNAME =	filter-dkimsign-${V}

CATEGORIES=	mail
HOMEPAGE=	http://imperialat.at/dev/filter-dkimsign

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

MASTER_SITES=	https://distfiles.sigtrap.nl/
INSTALL_TARGET=	bindir install

LIB_DEPENDS=	mail/opensmtpd-filters/libopensmtpd

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto opensmtpd
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

.include <bsd.port.mk>

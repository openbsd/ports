# $OpenBSD: Makefile,v 1.2 2019/09/23 19:24:45 martijn Exp $

COMMENT=	dkim signer integration to the OpenSMTPD daemon

V=		0.1
FILTER_NAME =	dkimsign
DISTNAME =	filter-dkimsign-${V}
REVISION =	0

CATEGORIES=	mail
HOMEPAGE=	http://imperialat.at/dev/filter-dkimsign

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

MASTER_SITES=	https://distfiles.nl/
INSTALL_TARGET=	bindir install

LIB_DEPENDS=	mail/opensmtpd-filters/libopensmtpd

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto opensmtpd
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

.include <bsd.port.mk>

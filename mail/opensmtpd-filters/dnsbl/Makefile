COMMENT=	dnsbl integration to the OpenSMTPD daemon

V=		0.3
FILTER_NAME =	dnsbl
DISTNAME =	filter-dnsbl-${V}

CATEGORIES=	mail
HOMEPAGE=	http://imperialat.at/dev/filter-dnsbl

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

SITES=		https://distfiles.sigtrap.nl/
INSTALL_TARGET=	bindir install

LIB_DEPENDS=	mail/opensmtpd-filters/libopensmtpd

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c event opensmtpd
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

.include <bsd.port.mk>

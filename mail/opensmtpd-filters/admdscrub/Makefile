COMMENT=	Administrative Management Domain scrubber for OpenSMTPD
V=		0.1
FILTER_NAME =	admdscrub
DISTNAME =	filter-admdscrub-${V}

CATEGORIES=	mail
HOMEPAGE=	http://imperialat.at/dev/filter-admdscrub

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

#MASTER_SITES=	https://distfiles.sigtrap.nl/
MASTER_SITES=	https://imperialat.at/releases/
INSTALL_TARGET=	bindir install

LIB_DEPENDS=	mail/opensmtpd-filters/libopensmtpd

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c event opensmtpd
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

.include <bsd.port.mk>

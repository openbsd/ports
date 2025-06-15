COMMENT=	Administrative Management Domain scrubber for OpenSMTPD
V=		0.2
FILTER_NAME =	admdscrub
DISTNAME =	filter-admdscrub-${V}

CATEGORIES=	mail
HOMEPAGE=	https://src.imperialat.at/?action=summary&path=filter-admdscrub.git

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

SITES=		https://src.imperialat.at/releases/
INSTALL_TARGET=	bindir install

LIB_DEPENDS=	mail/opensmtpd-filters/libopensmtpd

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c event opensmtpd
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

.include <bsd.port.mk>

COMMENT=	dkim signer integration to the OpenSMTPD daemon

V=		0.6
FILTER_NAME =	dkimsign
DISTNAME =	filter-dkimsign-${V}

CATEGORIES=	mail
HOMEPAGE=	https://src.imperialat.at/?action=summary&path=filter-dkimsign.git

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

SITES=		https://src.imperialat.at/releases/
INSTALL_TARGET=	bindir install

LIB_DEPENDS=	mail/opensmtpd-filters/libopensmtpd

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c opensmtpd crypto
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

.include <bsd.port.mk>

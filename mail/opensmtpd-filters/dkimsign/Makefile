COMMENT=	dkim signer integration to the OpenSMTPD daemon

V=		0.5
FILTER_NAME =	dkimsign
DISTNAME =	filter-dkimsign-${V}
REVISION =	2

CATEGORIES=	mail
HOMEPAGE=	http://imperialat.at/dev/filter-dkimsign

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

SITES=		https://distfiles.sigtrap.nl/
INSTALL_TARGET=	bindir install

LIB_DEPENDS=	mail/opensmtpd-filters/libopensmtpd

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c opensmtpd crypto
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"
MAKE_ENV=	HAVE_ED25519=1

.include <bsd.port.mk>

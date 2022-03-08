COMMENT=	dkim signer integration to the OpenSMTPD daemon

V=		0.5
FILTER_NAME =	dkimsign
DISTNAME =	filter-dkimsign-${V}

FLAVORS =	ed25519
FLAVOR	?=

CATEGORIES=	mail
HOMEPAGE=	http://imperialat.at/dev/filter-dkimsign

MAINTAINER=	Martijn van Duren <martijn@openbsd.org>

MASTER_SITES=	https://distfiles.sigtrap.nl/
INSTALL_TARGET=	bindir install

LIB_DEPENDS=	mail/opensmtpd-filters/libopensmtpd

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c opensmtpd
NO_TEST=	Yes
MAKE_FLAGS=	CC="${CC}"

.if ${FLAVOR:Med25519}
MAKE_ENV+=	HAVE_ED25519=1
MAKE_ENV+=	LIBCRYPTOPC=libecrypto11
LIB_DEPENDS+=	security/openssl/1.1
WANTLIB+=	lib/eopenssl11/crypto
.else
WANTLIB+=	crypto
.endif


.include <bsd.port.mk>

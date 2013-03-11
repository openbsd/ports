# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:42 espie Exp $

COMMENT =		securely store session data in a client-side cookie

DISTNAME =		clientsession-0.8.0.1
REVISION =		2
CATEGORIES =		security www

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-base64-bytestring>=0.1.1.1 \
			devel/hs-cereal>=0.3 \
			devel/hs-tagged>=0.1 \
			security/hs-cprng-aes>=0.2 \
			security/hs-crypto-api>=0.8 \
			security/hs-cryptocipher>=0.2.5 \
			security/hs-entropy>=0.2.1 \
			security/hs-skein>=0.1,<0.2
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>

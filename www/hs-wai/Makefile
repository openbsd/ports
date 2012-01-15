# $OpenBSD: Makefile,v 1.2 2012/01/15 17:19:53 kili Exp $

COMMENT =		web application interface

DISTNAME =		wai-0.4.3
CATEGORIES =		devel www
HOMEPAGE =		http://github.com/snoyberg/wai

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-enumerator>=0.4.8,<0.5 \
			devel/hs-network>=2.2.1.5,<2.4 \
			devel/hs-text>=0.7,<0.12 \
			devel/hs-transformers>=0.2.2,<0.3 \
			www/hs-http-types>=0.6,<0.7

.include <bsd.port.mk>

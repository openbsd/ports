# $OpenBSD: Makefile,v 1.1.1.1 2011/11/16 14:16:57 kili Exp $

COMMENT =		web application interface

DISTNAME =		wai-0.4.2
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
RUN_DEPENDS =		devel/hs-blaze-builder \
			devel/hs-enumerator \
			devel/hs-mtl \
			devel/hs-network \
			devel/hs-text \
			devel/hs-transformers \
			www/hs-http-types

.include <bsd.port.mk>

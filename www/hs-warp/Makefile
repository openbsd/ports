# $OpenBSD: Makefile,v 1.1.1.1 2011/11/16 14:18:32 kili Exp $

COMMENT =		web server for WAI applications

# DISTNAME =		warp-0.4.1.1
DISTNAME =		warp-0.4.5
CATEGORIES =		devel www
HOMEPAGE =		http://github.com/snoyberg/warp

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
			devel/hs-blaze-builder-enumerator>=0.2,<0.4 \
			devel/hs-case-insensitive>=0.2,<0.3 \
			devel/hs-enumerator>=0.4.5,<0.5 \
			devel/hs-network>=2.3,<2.4 \
			devel/hs-simple-sendfile>=0.1,<0.2 \
			devel/hs-transformers>=0.2,<0.3 \
			devel/hs-unix-compat>=0.2,<0.3 \
			www/hs-http-types>=0.6,<0.7 \
			www/hs-wai>=0.4,<0.5

.include <bsd.port.mk>

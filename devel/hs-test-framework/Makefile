# $OpenBSD: Makefile,v 1.6 2013/07/18 22:04:52 kili Exp $

COMMENT =		framework for running and organising tests

DISTNAME =		test-framework-0.6
REVISION =		3
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/test-framework/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/hs-hostname>=1.0 \
			textproc/hs-xml>=1.3.5 \
			devel/hs-ansi-terminal>=0.4.0 \
			devel/hs-ansi-wl-pprint>=0.5.1 \
			devel/hs-extensible-exceptions>=0.1.1 \
			devel/hs-random>=1.0 \
			devel/hs-regex-posix>=0.72

.include <bsd.port.mk>

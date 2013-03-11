# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:08 espie Exp $

COMMENT =		framework for running and organising tests

DISTNAME =		test-framework-0.6
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		http://batterseapower.github.com/test-framework/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-ansi-terminal>=0.4.0 \
			devel/hs-ansi-wl-pprint>=0.5.1 \
			devel/hs-random>=1.0 \
			devel/hs-regex-posix>=0.72 \
			textproc/hs-xml>=1.3.5 \
			net/hs-hostname>=1.0

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:08 espie Exp $

# XXX use system pcre instead of the one included the distfile

COMMENT =		replaces/enhances Text.Regex

DISTNAME =		regex-pcre-builtin-0.94.2.1.7.7
REVISION =		7
CATEGORIES =		devel
HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-regex-base>=0.93

.include <bsd.port.mk>

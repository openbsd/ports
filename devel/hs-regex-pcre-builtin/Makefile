# $OpenBSD: Makefile,v 1.12 2013/01/20 18:03:12 kili Exp $

# XXX use system pcre instead of the one included the distfile

COMMENT =		replaces/enhances Text.Regex

DISTNAME =		regex-pcre-builtin-0.94.2.1.7.7
REVISION =		7
CATEGORIES =		devel
HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-regex-base>=0.93

.include <bsd.port.mk>

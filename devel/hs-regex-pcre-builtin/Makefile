# $OpenBSD: Makefile,v 1.1.1.1 2010/06/20 09:44:33 kili Exp $

# XXX use system pcre instead of the one included the distfile

COMMENT =		replaces/enhances Text.Regex

DISTNAME =		regex-pcre-builtin-0.94.2.1.7.7
CATEGORIES =		devel
HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEOENDS =		:hs-regex-base->=0.93:devel/hs-regex-base

.include <bsd.port.mk>

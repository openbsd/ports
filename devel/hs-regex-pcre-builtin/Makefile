# $OpenBSD: Makefile,v 1.7 2010/11/26 07:19:00 espie Exp $

# XXX use system pcre instead of the one included the distfile

COMMENT =		replaces/enhances Text.Regex

DISTNAME =		regex-pcre-builtin-0.94.2.1.7.7
REVISION =		2
CATEGORIES =		devel
HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		devel/hs-regex-base>=0.93
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>

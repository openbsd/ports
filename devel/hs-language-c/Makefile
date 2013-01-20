# $OpenBSD: Makefile,v 1.15 2013/01/20 18:02:11 kili Exp $

COMMENT =		analysis and generation of C code in Haskell

DISTNAME =		language-c-0.3.2.1
REVISION =		4
CATEGORIES =		devel

HOMEPAGE =		http://www.sivity.net/projects/language.c/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		devel/alex \
			devel/happy \
			${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-syb

NO_REGRESS =		Yes

.include <bsd.port.mk>

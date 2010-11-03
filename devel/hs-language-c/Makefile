# $OpenBSD: Makefile,v 1.8 2010/11/03 22:13:38 kili Exp $

COMMENT =		analysis and generation of C code in Haskell

DISTNAME =		language-c-0.3.1.1
REVISION =		5
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

BUILD_DEPENDS =		::devel/alex \
			::devel/happy

NO_REGRESS =		Yes

.include <bsd.port.mk>

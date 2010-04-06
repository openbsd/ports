# $OpenBSD: Makefile,v 1.1.1.1 2010/04/06 14:42:10 kili Exp $

COMMENT =		interface API for regex-posix,pcre,parsec,tdfa,dfa

DISTNAME =		regex-base-0.93.1
CATEGORIES =		devel

HOMEPAGE =		http://sourceforge.net/projects/lazy-regex

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>

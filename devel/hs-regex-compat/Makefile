# $OpenBSD: Makefile,v 1.12 2011/04/11 14:46:30 kili Exp $

COMMENT =		module layer over regex-posix to replace Text.Regex

DISTNAME =		regex-compat-0.93.1
REVISION =		2
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

RUN_DEPENDS =		devel/hs-regex-base>=0.93 \
			devel/hs-regex-posix>=0.93
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2010/09/21 16:19:39 jim Exp $

COMMENT =		XML parser/formatter based on expat

DISTNAME =		hexpat-0.18.3
REVISION =		0
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		::devel/hs-List \
			::devel/hs-deepseq \
			::devel/hs-text \
			::devel/hs-transformers
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>

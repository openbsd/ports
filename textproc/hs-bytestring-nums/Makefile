# $OpenBSD: Makefile,v 1.5 2011/09/16 11:41:40 espie Exp $

COMMENT =		parse numeric literals from bytestrings

DISTNAME =		bytestring-nums-0.3.2
REVISION =		3
CATEGORIES =		textproc
HOMEPAGE =		http://github.com/solidsnack/bytestring-nums

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>

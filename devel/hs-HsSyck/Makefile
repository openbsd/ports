# $OpenBSD: Makefile,v 1.1.1.1 2010/06/20 09:39:11 kili Exp $

COMMENT =		fast, lightweight YAML loader and dumper

DISTNAME =		HsSyck-0.45
CATEGORIES =		devel

# MIT (see comment in HsSyck.cabal)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

post-install:
	mv ${PREFIX}/share/${DISTNAME}/* ${PREFIX}/share/doc/${DISTNAME}
	rmdir ${PREFIX}/share/${DISTNAME}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.9 2010/09/24 10:09:42 dcoppa Exp $

COMMENT =		utilities for manipulating XML documents

DISTNAME =		HaXml-1.13.3
REVISION =		6
CATEGORIES =		textproc
HOMEPAGE =		http://www.cs.york.ac.uk/fp/HaXml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

WANTLIB =		c gmp m pthread util

# GPLv2 / LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>

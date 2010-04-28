# $OpenBSD: Makefile,v 1.1.1.1 2010/04/28 16:21:40 dcoppa Exp $

COMMENT =		podcast aggregator written in Haskell

DISTNAME =		hpodder-1.1.5
CATEGORIES =		net
HOMEPAGE =		http://software.complete.org/hpodder

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		::devel/hs-ConfigFile \
			:hs-HaXml->=1.13.2<1.19:textproc/hs-HaXml \
			::databases/hs-HDBC-sqlite3
LIB_DEPENDS =		sqlite3::databases/sqlite3
RUN_DEPENDS =		:curl->=7.15.5:net/curl \
			:py-mutagen->=1.9:audio/py-mutagen

post-install:
	${INSTALL_MAN} files/hpodder.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

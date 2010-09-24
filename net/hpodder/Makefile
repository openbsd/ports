# $OpenBSD: Makefile,v 1.8 2010/09/24 10:09:42 dcoppa Exp $

COMMENT =		command line podcast aggregator

DISTNAME =		hpodder-1.1.5
REVISION =		3
CATEGORIES =		net
HOMEPAGE =		http://software.complete.org/hpodder

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c gmp m pthread sqlite3 util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		::devel/hs-ConfigFile \
			:hs-HaXml->=1.13.2<1.19:textproc/hs-HaXml \
			::databases/hs-HDBC-sqlite3
LIB_DEPENDS =		::databases/sqlite3 \
			::devel/gmp
RUN_DEPENDS =		:curl->=7.15.5:net/curl \
			:py-mutagen->=1.9:audio/py-mutagen

post-install:
	${INSTALL_MAN} ${FILESDIR}/hpodder.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

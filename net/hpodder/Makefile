# $OpenBSD: Makefile,v 1.15 2011/06/30 21:36:37 kili Exp $

COMMENT =		command line podcast aggregator

DISTNAME =		hpodder-1.1.5
REVISION =		8
CATEGORIES =		net
HOMEPAGE =		https://github.com/jgoerzen/hpodder/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c gmp m pthread sqlite3 util

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		devel/hs-ConfigFile \
			devel/hs-mtl \
			textproc/hs-HaXml>=1.20 \
			databases/hs-HDBC-sqlite3
LIB_DEPENDS =		databases/sqlite3 \
			devel/gmp
RUN_DEPENDS =		net/curl>=7.15.5 \
			audio/py-mutagen>=1.9

post-install:
	${INSTALL_MAN} ${FILESDIR}/hpodder.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

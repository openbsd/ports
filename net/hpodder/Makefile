# $OpenBSD: Makefile,v 1.18 2011/12/05 14:58:59 dcoppa Exp $

COMMENT =		command line podcast aggregator

DISTNAME =		hpodder-1.1.6
CATEGORIES =		net
HOMEPAGE =		http://wiki.github.com/jgoerzen/hpodder/

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
			textproc/hs-HaXml>=1.20,<1.21 \
			databases/hs-HDBC-sqlite3>=1.1.0
LIB_DEPENDS =		databases/sqlite3 \
			devel/gmp
RUN_DEPENDS =		net/curl>=7.15.5 \
			audio/py-mutagen>=1.9

post-install:
	${INSTALL_MAN} ${FILESDIR}/hpodder.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

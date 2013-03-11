# $OpenBSD: Makefile,v 1.25 2013/03/11 11:35:47 espie Exp $

COMMENT =		command line podcast aggregator

DISTNAME =		hpodder-1.1.6
REVISION =		4
CATEGORIES =		net
HOMEPAGE =		http://wiki.github.com/jgoerzen/hpodder/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread sqlite3 util

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		devel/hs-ConfigFile \
			devel/hs-mtl \
			textproc/hs-HaXml>=1.22,<1.24 \
			databases/hs-HDBC-sqlite3>=1.1.0
RUN_DEPENDS =		net/curl>=7.15.5 \
			audio/py-mutagen>=1.9

post-install:
	${INSTALL_MAN} ${FILESDIR}/hpodder.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

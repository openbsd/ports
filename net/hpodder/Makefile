# $OpenBSD: Makefile,v 1.43 2020/04/25 10:07:42 ajacoutot Exp $

COMMENT =		command line podcast aggregator

DISTNAME =		hpodder-1.1.6
REVISION =		19
CATEGORIES =		net
HOMEPAGE =		https://github.com/jgoerzen/hpodder/wiki

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c charset ffi gmp iconv m pthread sqlite3 util

MODULES =		lang/ghc \
			lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_BUILDDEP =	No

MODGHC_BUILD =		cabal hackage nort

LIB_DEPENDS =		converters/libiconv \
			databases/sqlite3 \
			devel/gmp \
			devel/libffi

BUILD_DEPENDS =		devel/hs-ConfigFile \
			devel/hs-network-uri \
			textproc/hs-HaXml>=1.22 \
			databases/hs-HDBC-sqlite3>=1.1.0
RUN_DEPENDS =		net/curl>=7.15.5 \
			audio/py-mutagen${MODPY_FLAVOR}

post-install:
	${INSTALL_MAN} ${FILESDIR}/hpodder.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

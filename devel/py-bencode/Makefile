# $OpenBSD: Makefile,v 1.6 2021/11/02 00:00:26 sthen Exp $

COMMENT =	bencoding and bdecoding implementation

MODPY_EGG_VERSION = 2.1.0
DISTNAME =	bencode.py-${MODPY_EGG_VERSION}
PKGNAME =	py-bencode-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BitTorrent Open Source License
# BTOSL http://www.bittorrent.com/license
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-pbr${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>

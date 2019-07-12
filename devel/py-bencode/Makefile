# $OpenBSD: Makefile,v 1.2 2019/07/12 20:45:45 sthen Exp $

COMMENT =	bencoding and bdecoding implementation

MODPY_EGG_VERSION = 1.0
DISTNAME =	bencode-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://pypi.python.org/pypi/bencode

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BitTorrent Open Source License
# BTOSL http://www.bittorrent.com/license
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>

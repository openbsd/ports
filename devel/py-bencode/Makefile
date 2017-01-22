# $OpenBSD: Makefile,v 1.1.1.1 2017/01/22 08:00:32 rpointel Exp $

COMMENT =	bencoding and bdecoding implementation

MODPY_EGG_VERSION = 1.0
DISTNAME =	bencode-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://pypi.python.org/pypi/bencode

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BitTorrent Open Source License
# BTOSL http://www.bittorrent.com/license
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>

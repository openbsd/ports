# $OpenBSD: Makefile,v 1.4 2017/07/13 13:24:03 sthen Exp $

COMMENT =		network address representation and manipulation library

MODPY_EGG_VERSION =	0.7.18
DISTNAME =		netaddr-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		http://github.com/drkjam/netaddr/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVOR ?=
FLAVORS =		python3

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/netaddr ${PREFIX}/bin/netaddr${MODPY_BIN_SUFFIX}

do-test:
	cd ${WRKSRC}; py.test${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2015/04/02 14:21:16 jasper Exp $

COMMENT =		backport of new features added to unittest

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		unittest2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/unittest2
MAINTAINER =		frantisek holop <minusf@obiit.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-unittest2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unittest2
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/unittest2

do-test: fake
	cd ${WRKSRC}/unittest2/test && unit2 discover

.include <bsd.port.mk>

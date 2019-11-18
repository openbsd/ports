# $OpenBSD: Makefile,v 1.7 2019/11/18 03:23:00 kmos Exp $

COMMENT =		backport of new features added to unittest

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		unittest2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

MAINTAINER =		frantisek holop <minusf@obiit.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-unittest2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unittest2
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/unittest2

do-test:
	cd ${WRKSRC}/unittest2/test && unit2 discover

.include <bsd.port.mk>

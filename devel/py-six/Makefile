# $OpenBSD: Makefile,v 1.13 2015/09/29 10:52:12 sthen Exp $

COMMENT =	Python 2 and 3 compatibility library
MODPY_EGG_VERSION =	1.9.0
DISTNAME =	six-${MODPY_EGG_VERSION}
PKGNAME =	py-six-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	1

HOMEPAGE =	http://pythonhosted.org/six/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-py${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest -v

.include <bsd.port.mk>

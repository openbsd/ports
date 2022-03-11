COMMENT =	Yet Another SWF Parser

MODPY_EGG_VERSION =	0.9.3
DISTNAME =	yaswfp-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

GH_ACCOUNT =	facundobatista
GH_PROJECT =	yaswfp
GH_COMMIT =	2a2cc6ca4c0b4d52bd2e658fb5f80fdc0db4924c

CATEGORIES =	security devel

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

TEST_DEPENDS =	devel/pyflakes${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR}

do-test:
	sed -i "s/nosetests3/nosetests${MODPY_BIN_SUFFIX}/g" ${WRKSRC}/test
	sed -i "s/flake8/pyflakes${MODPY_BIN_SUFFIX}/g" ${WRKSRC}/test
	cd ${WRKSRC} && /bin/sh ./test

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>

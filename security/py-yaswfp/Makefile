# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:53 sthen Exp $

COMMENT =	Yet Another SWF Parser

MODPY_EGG_VERSION =	0.9.3
DISTNAME =	yaswfp-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

GH_ACCOUNT =	facundobatista
GH_PROJECT =	yaswfp
GH_COMMIT =	2a2cc6ca4c0b4d52bd2e658fb5f80fdc0db4924c

CATEGORIES =	security devel

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS =	devel/pyflakes${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR}

do-test:
	sed -i "s/nosetests3/nosetests-3/g" ${WRKSRC}/test
	sed -i "s/flake8/pyflakes-3/g" ${WRKSRC}/test
	cd ${WRKSRC} && /bin/sh ./test

.include <bsd.port.mk>

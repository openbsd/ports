# $OpenBSD: Makefile,v 1.30 2021/11/02 00:02:37 sthen Exp $

COMMENT =	process plaintext documentation into other formats

MODPY_EGG_VERSION = 0.16
DISTNAME =	docutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	textproc
REVISION =	1

HOMEPAGE =	https://docutils.sourceforge.io/

# BSD/GPL/Python Software License
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes

RUN_DEPENDS =	textproc/py-pygments${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3
MODPY_PYTEST =	Yes

post-install:
	for i in ${PREFIX}/bin/*; do mv $${i} $${i%.py} ; done

.include <bsd.port.mk>

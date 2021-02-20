# $OpenBSD: Makefile,v 1.29 2021/02/20 13:26:33 sthen Exp $

COMMENT =	process plaintext documentation into other formats

MODPY_EGG_VERSION = 0.16
DISTNAME =	docutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	textproc
REVISION =	0

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

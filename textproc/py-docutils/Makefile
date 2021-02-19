# $OpenBSD: Makefile,v 1.27 2021/02/19 23:10:57 sthen Exp $

COMMENT =	process plaintext documentation into other formats

MODPY_EGG_VERSION = 0.16
DISTNAME =	docutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	textproc

HOMEPAGE =	https://docutils.sourceforge.io/

# BSD/GPL/Python Software License
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes

RUN_DEPENDS =	textproc/py-pygments${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i%.py}${MODPY_BIN_SUFFIX} ;\
	done

do-test:
	cd ${WRKSRC}/test${MODPY_BIN_SUFFIX:S/-//} && ${MODPY_BIN} ./alltests.py

.include <bsd.port.mk>

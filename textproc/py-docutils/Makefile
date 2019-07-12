# $OpenBSD: Makefile,v 1.25 2019/07/12 20:50:11 sthen Exp $

COMMENT =	process plaintext documentation into other formats

MODPY_EGG_VERSION = 0.12
DISTNAME =	docutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	textproc
REVISION =	2

HOMEPAGE =	http://docutils.sourceforge.net/

# BSD/GPL/Python Software License
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes

RUN_DEPENDS =	textproc/py-pygments${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

pre-build:
.for file in 2html 2s5 2latex 2xetex 2man 2xml 2pseudoxml 2odt 2odt_prepstyles pep2html
	mv ${WRKSRC}/tools/rst${file}{.py,}
.endfor

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

do-test:
	cd ${WRKSRC}/test${MODPY_BIN_SUFFIX:S/-//} && ${MODPY_BIN} ./alltests.py

.include <bsd.port.mk>

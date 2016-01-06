# $OpenBSD: Makefile,v 1.20 2016/01/06 13:41:56 ajacoutot Exp $

COMMENT =	process plaintext documentation into other formats

MODPY_EGG_VERSION = 0.12
DISTNAME =	docutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	textproc
REVISION =	0

HOMEPAGE =	http://docutils.sourceforge.net/

# BSD/GPL/Python Software License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =	Yes

RUN_DEPENDS =	textproc/py-pygments${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

pre-build:
.for file in 2html 2s5 2latex 2xetex 2man 2xml 2pseudoxml 2odt 2odt_prepstyles pep2html
	mv ${WRKSRC}/tools/rst${file}{.py,}
.endfor

.if ${FLAVOR:Mpython3}
post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done
.endif

do-test: fake
.if ${FLAVOR:Mpython3}
	cd ${WRKSRC}/test3 && ${MODPY_BIN} ./alltests.py
.else
	cd ${WRKSRC}/test && ${MODPY_BIN} ./alltests.py
.endif

.include <bsd.port.mk>

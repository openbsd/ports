# $OpenBSD: Makefile,v 1.3 2015/11/23 14:32:16 ajacoutot Exp $

COMMENT =		Sphinx extension to support docstrings in Numpy format

MODPY_EGG_VERSION =	0.5
DISTNAME =		numpydoc-${MODPY_EGG_VERSION}
PKGNAME =		py-numpydoc-${MODPY_EGG_VERSION}
CATEGORIES =		textproc devel
HOMEPAGE =		https://github.com/numpy/numpydoc

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS =		graphics/py-matplotlib \
			textproc/py-sphinx

TEST_DEPENDS =		${BASE_PKGPATH} \
			devel/py-nose \
			devel/py-test
do-test:
	cd ${WRKSRC} && py.test -v

.include <bsd.port.mk>

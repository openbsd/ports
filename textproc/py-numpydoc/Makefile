# $OpenBSD: Makefile,v 1.2 2015/04/02 14:21:17 jasper Exp $

COMMENT =		Sphinx extension to support docstrings in Numpy format

MODPY_EGG_VERSION =	0.4
DISTNAME =		numpydoc-${MODPY_EGG_VERSION}
PKGNAME =		py-numpydoc-${MODPY_EGG_VERSION}
CATEGORIES =		textproc devel
HOMEPAGE =		https://github.com/numpy/numpydoc

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

TEST_DEPENDS =		devel/py-test \
			textproc/py-sphinx
do-test:
	cd ${WRKSRC} && py.test -v

.include <bsd.port.mk>

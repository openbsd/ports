# $OpenBSD: Makefile,v 1.1.1.1 2014/04/28 20:05:30 edd Exp $

COMMENT =		Sphinx extension to support docstrings in Numpy format

MODPY_EGG_VERSION =	0.4
DISTNAME =		numpydoc-${MODPY_EGG_VERSION}
PKGNAME =		py-numpydoc-${MODPY_EGG_VERSION}
CATEGORIES =		textproc devel
HOMEPAGE =		https://github.com/numpy/numpydoc

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=n/numpydoc/}

MODULES =		lang/python

TEST_DEPENDS =		devel/py-test \
			textproc/py-sphinx
do-test:
	cd ${WRKSRC} && py.test -v

.include <bsd.port.mk>

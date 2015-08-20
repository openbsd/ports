# $OpenBSD: Makefile,v 1.1.1.1 2015/08/20 12:56:32 edd Exp $

COMMENT =		os.path wrapper for Python

MODPY_EGG_VERSION =	7.6
DISTNAME =		path.py-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jaraco/path.py

TEST_DEPENDS +=		devel/py-test \
			${FULLPKGNAME}:${FULLPKGPATH}

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py

do-test:
	${LOCALBASE}/bin/py.test ${MODPY_LIBDIR}/site-packages/test_path.py

.include <bsd.port.mk>

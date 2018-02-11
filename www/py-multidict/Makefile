# $OpenBSD: Makefile,v 1.3 2018/02/11 19:02:41 jung Exp $

COMMENT =		multidict implementation

MODPY_EGG_VERSION =	4.0.0
DISTNAME =		multidict-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www devel

WANTLIB += pthread ${MODPY_WANTLIB}

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>

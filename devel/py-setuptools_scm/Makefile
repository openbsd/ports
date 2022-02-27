# $OpenBSD: Makefile,v 1.24 2022/02/27 12:40:15 sthen Exp $

COMMENT =		plugin to manage your versions by scm tags

MODPY_EGG_VERSION =	6.4.2
DISTNAME =		setuptools_scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/git \
			devel/mercurial \
			devel/py-pip${MODPY_FLAVOR}

RUN_DEPENDS +=		textproc/py-tomli${MODPY_FLAVOR}
BUILD_DEPENDS +=	textproc/py-tomli${MODPY_FLAVOR}

pre-test:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>

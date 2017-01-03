# $OpenBSD: Makefile,v 1.6 2017/01/03 19:19:49 landry Exp $

COMMENT =		plugin to manage your versions by scm tags

MODPY_EGG_VERSION =	1.15.0
DISTNAME =		setuptools_scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

TEST_DEPENDS =		devel/git \
			devel/mercurial \
			devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

pre-configure:
	${SUBST_CMD} ${WRKSRC}/testing/test_regressions.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>

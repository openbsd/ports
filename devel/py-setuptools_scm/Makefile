# $OpenBSD: Makefile,v 1.9 2018/04/28 10:45:08 pvk Exp $

COMMENT =		plugin to manage your versions by scm tags

MODPY_EGG_VERSION =	2.0.0
DISTNAME =		setuptools_scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

TEST_DEPENDS =		devel/git \
			devel/mercurial \
			devel/py-pip${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	@rm ${WRKSRC}/testing/test_setuptools_support.py
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>

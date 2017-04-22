# $OpenBSD: Makefile,v 1.7 2017/04/22 17:48:14 shadchin Exp $

COMMENT =		plugin to manage your versions by scm tags

MODPY_EGG_VERSION =	1.15.5
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
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.6 2016/11/24 16:18:48 shadchin Exp $

COMMENT =		thin-wrapper around mock package for easier use with pytest

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		pytest-mock-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/pytest-dev/pytest-mock/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			${BASE_PKGPATH}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-mock
.endif

# One test fail if py3-mock installed
do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>

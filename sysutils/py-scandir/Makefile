# $OpenBSD: Makefile,v 1.3 2019/03/23 15:00:15 mariani Exp $

COMMENT =		improved directory iterator and faster os.walk()

MODPY_EGG_VERSION =	1.10.0
DISTNAME =		scandir-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/benhoyt/scandir

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# BSD 3-Clause
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

WANTLIB += pthread ${MODPY_WANTLIB}

TEST_DEPENDS +=		${FULLPKGNAME}:${BUILD_PKGPATH}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-unittest2
.endif

do-test:
	cd ${WRKSRC}/test && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>

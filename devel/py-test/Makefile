# $OpenBSD: Makefile,v 1.35 2019/07/12 20:45:54 sthen Exp $

COMMENT=		cross-project testing tool for Python

MODPY_EGG_VERSION =	4.4.0
DISTNAME=		pytest-${MODPY_EGG_VERSION}
PKGNAME=		py-test-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE =		https://docs.pytest.org/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	testing

FLAVORS=		python3
FLAVOR?=

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR}>=17.4.0 \
			devel/py-more-itertools${MODPY_FLAVOR} \
			devel/py-pluggy${MODPY_FLAVOR}>=0.9 \
			devel/py-py${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-funcsigs \
			devel/py-pathlib2
.endif

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			shells/bash \
			www/py-requests${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-pathlib2 \
			sysutils/py-scandir
.endif

post-install:
	mv ${PREFIX}/bin/py.test{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:50 sthen Exp $

COMMENT =		fixture for benchmarking code

MODPY_EGG_VERSION =	3.2.2
DISTNAME =		pytest-benchmark-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://pytest-benchmark.readthedocs.org/en/stable/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-freezegun${MODPY_FLAVOR} \
			textproc/py-elasticsearch${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		math/py-statistics
.endif

post-install:
	for i in ${PREFIX}/bin/*; do \
	    mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

.include <bsd.port.mk>

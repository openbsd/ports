COMMENT =	Python bindings for The Sleuth Kit (libtsk)

MODPY_DISTV =	20260418
DISTNAME =	pytsk3-${MODPY_DISTV}
PKGNAME =	py-tsk-${MODPY_DISTV}

# download a copy from github archive as well, to fill in the incomplete
# tests dir from the pypi sdist (this is simpler than fetching the whole
# port from github as it needs a submodule + autoconf scripts generating)
DIST_TUPLE =   github py4n6 pytsk ${MODPY_DISTV} .

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/py4n6/pytsk/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
## so that we get gawk poisoning in the sleuthkit part
#MODULES +=		gnu

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

WANTLIB += ${COMPILER_LIBCXX} m

# C++11
COMPILER=	base-clang ports-gcc

post-extract:
	mv ${WRKDIR}/pytsk-${MODPY_DISTV}/tests/* ${WRKSRC}/tests/

# Ran 30 tests in 0.094s
do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>

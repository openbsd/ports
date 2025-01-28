COMMENT =	Python bindings for The Sleuth Kit (libtsk)

MODPY_DISTV =	20200117
DISTNAME =	pytsk3-${MODPY_DISTV}
PKGNAME =	py-tsk-${MODPY_DISTV}
REVISION =	8

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/py4n6/pytsk/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
# so that we get gawk poisoning in the sleuthkit part
MODULES +=		gnu

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

WANTLIB += talloc tsk ${MODPY_WANTLIB}

# C++11
COMPILER=	base-clang ports-gcc

pre-configure:
		${SUBST_DATA} ${WRKSRC}/setup.py ${WRKSRC}/setup.py.new
		mv ${WRKSRC}/setup.py.new ${WRKSRC}/setup.py

LIB_DEPENDS =	sysutils/sleuthkit \
		devel/libtalloc
TEST_DEPENDS =	sysutils/py-tsk=${MODPY_DISTV}

# it needs test_data/* in the Github repository
do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>

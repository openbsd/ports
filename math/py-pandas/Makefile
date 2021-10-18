# $OpenBSD: Makefile,v 1.20 2021/10/18 10:07:18 sthen Exp $

COMMENT =		data analysis and manipulation library

MODPY_EGG_VERSION =	1.2.5
# 1.3.0+ requires numpy>=1.17.3
DISTNAME =		pandas-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

HOMEPAGE =		https://pandas.pydata.org/

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	pandas

WANTLIB +=		${COMPILER_LIBCXX} m ${MODPY_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS +=	lang/cython${MODPY_FLAVOR}>=0.29.21 \
			math/py-numpy${MODPY_FLAVOR}>=1.15.4

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}>=2.7.3 \
			devel/py-tz${MODPY_FLAVOR}>=2017.2 \
			lang/cython${MODPY_FLAVOR}>=0.29.21 \
			math/py-numpy${MODPY_FLAVOR}>=1.15.4

TEST_DEPENDS +=		databases/py-mysqlclient${MODPY_FLAVOR} \
			databases/py-psycopg2${MODPY_FLAVOR} \
			databases/py-sqlalchemy${MODPY_FLAVOR} \
			devel/ipython${MODPY_FLAVOR} \
			devel/py-html5lib${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-pathlib${MODPY_FLAVOR} \
			devel/py-xlsxwriter${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-bottleneck${MODPY_FLAVOR} \
			math/py-numexpr${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-openpyxl${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-httplib2${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			x11/xclip

# py-boto has been removed from ports on 20210902
#TEST_DEPENDS +=		net/py-boto${MODPY_FLAVOR}

TEST_ENV +=		TZ=UTC

# XXX tarball does not include all files required for the test suite, as such
# numerous tests fail.
do-test:
	cd ${WRKSRC} && ${MODPY_CMD} build_ext --inplace
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>

COMMENT =		data analysis and manipulation library

MODPY_EGG_VERSION =	2.2.2
DISTNAME =		pandas-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		math

HOMEPAGE =		https://pandas.pydata.org/

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} m ${MODPY_WANTLIB}

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		other
# test_dst.py: ValueError: could not convert string to float: '2022.2.1'
MODPY_PYTEST_ARGS =	pandas \
			--ignore pandas/tests/tseries/offsets/test_dst.py

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/meson-python \
			devel/py-versioneer${MODPY_FLAVOR} \
			lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			math/py-oldest-supported-numpy${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR}>=2.8.2 \
			devel/py-tzdata${MODPY_FLAVOR}>=2022.7 \
			devel/py-tz${MODPY_FLAVOR}>=2020.1 \
			math/py-numpy${MODPY_FLAVOR}>=1.25.0

# XXX: re-add scipy once that is ported to cython 3
# XXX: needs fixing
NO_TEST = Yes
TEST_DEPENDS =		databases/py-mysqlclient${MODPY_FLAVOR} \
			databases/py-psycopg2${MODPY_FLAVOR} \
			databases/py-sqlalchemy${MODPY_FLAVOR} \
			devel/ipython${MODPY_FLAVOR} \
			devel/py-html5lib${MODPY_FLAVOR} \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			devel/py-xlsxwriter${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-bottleneck${MODPY_FLAVOR} \
			math/py-numexpr${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-openpyxl${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-httplib2${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			x11/xclip

PORTHOME =		${WRKDIR}
TEST_ENV +=		TZ=UTC

.include <bsd.port.mk>

COMMENT =		data analysis and manipulation library

MODPY_DISTV =	2.2.3
DISTNAME =		pandas-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		math

HOMEPAGE =		https://pandas.pydata.org/

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} m ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		other
# test_dst.py: ValueError: could not convert string to float: '2022.2.1'
MODPY_PYTEST_ARGS =	pandas \
			--ignore pandas/tests/tseries/offsets/test_dst.py

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/meson-python \
			devel/py-versioneer \
			devel/py-wheel \
			lang/cython \
			math/py-numpy \
			math/py-oldest-supported-numpy

RUN_DEPENDS =		devel/py-dateutil>=2.8.2 \
			devel/py-tzdata>=2022.7 \
			devel/py-tz>=2020.1 \
			math/py-numpy>=1.25.0

# XXX: re-add scipy once that is ported to cython 3
# XXX: needs fixing
NO_TEST = Yes
TEST_DEPENDS =		databases/py-mysqlclient \
			databases/py-psycopg2 \
			databases/py-sqlalchemy \
			devel/ipython \
			devel/py-html5lib \
			devel/py-hypothesis \
			devel/py-ipykernel \
			devel/py-test-asyncio \
			devel/py-test-xdist \
			devel/py-xlsxwriter \
			graphics/py-matplotlib \
			math/py-bottleneck \
			math/py-numexpr \
			textproc/py-lxml \
			textproc/py-openpyxl \
			www/py-beautifulsoup4 \
			www/py-httplib2 \
			www/py-jinja2 \
			x11/xclip

PORTHOME =		${WRKDIR}
TEST_ENV +=		TZ=UTC

.include <bsd.port.mk>

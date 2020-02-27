# $OpenBSD: Makefile,v 1.11 2020/02/27 18:23:39 bket Exp $

COMMENT =		data analysis and manipulation library

MODPY_EGG_VERSION =	1.0.1
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

BUILD_DEPENDS +=	lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}>=1.13.3

RUN_DEPENDS +=		devel/py-dateutil${MODPY_FLAVOR}>=2.6.1 \
			devel/py-tz${MODPY_FLAVOR}>=2017.2 \
			lang/cython${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}>=1.13.3

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
			net/py-boto${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-xlrd${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-httplib2${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			x11/xclip

TEST_ENV +=		TZ=UTC

# XXX tarball does not include all files required for the test suite, as such
# numerous tests fail.
do-test:
	cd ${WRKSRC} && ${MODPY_CMD} build_ext --inplace
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>

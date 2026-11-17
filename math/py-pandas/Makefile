COMMENT=	data analysis and manipulation library

MODPY_DISTV=	3.1.1
DISTNAME=	pandas-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	math

HOMEPAGE=	https://pandas.pydata.org/

# BSD 3-Clause
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} ${MODPY_WANTLIB} m

MODULES=	lang/python
MODPY_PYBUILD=	mesonpy
MODPY_PI=	Yes

DEBUG_PACKAGES=	${BUILD_PACKAGES}

COMPILER=	base-clang ports-gcc

BUILD_DEPENDS=	devel/py-versioneer \
		devel/py-wheel \
		lang/cython \
		math/py-numpy

RUN_DEPENDS=	devel/py-dateutil>=2.8.2 \
		devel/py-tzdata>=2022.7 \
		devel/py-tz>=2020.1 \
		math/py-numpy>=1.25.0

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		databases/py-mysqlclient \
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
		math/py-scipy \
		textproc/py-lxml \
		textproc/py-openpyxl \
		www/py-beautifulsoup4 \
		www/py-httplib2 \
		www/py-jinja2 \
		x11/xclip

MODPY_TEST_LINK_SO= Yes
MODPY_PYTEST_ARGS= pandas
PORTHOME=	${WRKDIR}
TEST_ENV=	TZ=UTC

do-test:
	cd ${WRKDIR} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'import pandas ; pandas.test()'

.include <bsd.port.mk>

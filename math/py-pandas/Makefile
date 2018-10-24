# $OpenBSD: Makefile,v 1.2 2018/10/24 14:28:07 sthen Exp $

COMMENT =		data analysis and manipulation library

MODPY_EGG_VERSION =	0.23.4
DISTNAME =		pandas-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		math

HOMEPAGE =		https://pandas.pydata.org/

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# BSD 3-Clause
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

WANTLIB +=		${COMPILER_LIBCXX} m ${MODPY_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS +=	math/py-numpy${MODPY_FLAVOR}>=1.9.0

RUN_DEPENDS +=		math/py-numpy${MODPY_FLAVOR}>=1.9.0 \
			devel/py-dateutil${MODPY_FLAVOR}>=2.5.0 \
			devel/py-tz${MODPY_FLAVOR}

TEST_DEPENDS +=		${RUN_DEPENDS} \
			databases/py-mysqlclient${MODPY_FLAVOR} \
			databases/py-psycopg2${MODPY_FLAVOR} \
			databases/py-sqlalchemy${MODPY_FLAVOR} \
			devel/ipython${MODPY_FLAVOR} \
			devel/py-html5lib${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-pathlib${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
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

do-test:
	cd ${WRKSRC} && ${MODPY_CMD} build_ext --inplace
	cd ${WRKSRC} && env TZ=UTC ${MODPY_BIN} -m pytest pandas

.include <bsd.port.mk>

COMMENT=	parse dates from HTML pages

MODPY_EGG_VERSION=	1.2.0
DISTNAME=	dateparser-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc
REVISION=	0

HOMEPAGE=	https://github.com/scrapinghub/dateparser/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
RUN_DEPENDS=	devel/py-tzlocal${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		devel/py-regex${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-parameterized${MODPY_FLAVOR}

MODPY_PYTEST_ARGS=	--ignore tests/test_dateparser_data_integrity.py \
			--ignore tests/test_hijri.py \
			--ignore tests/test_jalali.py \
			--ignore tests/test_language_detect.py

.include <bsd.port.mk>

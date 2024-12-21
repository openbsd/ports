COMMENT=	parse dates from HTML pages

MODPY_DISTV=	1.2.0
DISTNAME=	dateparser-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc
REVISION=	1

HOMEPAGE=	https://github.com/scrapinghub/dateparser/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
RUN_DEPENDS=	devel/py-tzlocal \
		devel/py-tz \
		devel/py-regex \
		devel/py-dateutil

TEST_DEPENDS=	devel/py-parameterized

MODPY_PYTEST_ARGS=	--ignore tests/test_dateparser_data_integrity.py \
			--ignore tests/test_hijri.py \
			--ignore tests/test_jalali.py \
			--ignore tests/test_language_detect.py

.include <bsd.port.mk>

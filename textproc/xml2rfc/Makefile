COMMENT=	convert memos written in XML to the RFC format

MODPY_EGG_VERSION=	3.15.3
DISTNAME=	xml2rfc-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= test.py

RUN_DEPENDS=	devel/py-appdirs${MODPY_FLAVOR} \
		devel/py-configargparse${MODPY_FLAVOR} \
		devel/py-country${MODPY_FLAVOR} \
		devel/py-html5lib${MODPY_FLAVOR} \
		devel/py-intervaltree${MODPY_FLAVOR} \
		devel/py-kitchen${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-wcwidth${MODPY_FLAVOR} \
		devel/pyflakes${MODPY_FLAVOR} \
		geo/py-google-i18n-address${MODPY_FLAVOR} \
		textproc/py-MarkupSafe${MODPY_FLAVOR} \
		textproc/py-dict2xml${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-decorator${MODPY_FLAVOR} \
		graphics/py-cairo${MODPY_FLAVOR} \
		textproc/py-PyPDF2${MODPY_FLAVOR}

.include <bsd.port.mk>

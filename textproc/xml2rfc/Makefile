COMMENT=	convert memos written in XML to the RFC format

MODPY_EGG_VERSION=	3.23.0
DISTNAME=	xml2rfc-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/ietf-tools/xml2rfc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= test.py

# from requirements.txt
RUN_DEPENDS=	sysutils/py-platformdirs${MODPY_FLAVOR} \
		devel/py-configargparse${MODPY_FLAVOR} \
		geo/py-google-i18n-address${MODPY_FLAVOR}>=3 \
		devel/py-intervaltree${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		devel/py-country${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		devel/py-wcwidth${MODPY_FLAVOR}

TEST_DEPENDS+=	devel/py-decorator${MODPY_FLAVOR} \
		print/py-pypdf${MODPY_FLAVOR} \
		print/weasyprint${MODPY_FLAVOR} \
		textproc/py-dict2xml${MODPY_FLAVOR} \
		fonts/noto/fonts \
		fonts/noto/cjk

# tests also need network access
PORTHOME=	${WRKDIR}
pre-test:
	# hiding pkg_resources DeprecationWarnings
	@ (echo '[pytest]'; \
	echo 'filterwarnings = ignore:.*pkg_resources.*:DeprecationWarning') \
	> ${WRKSRC}/pytest.ini

.include <bsd.port.mk>

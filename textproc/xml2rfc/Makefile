COMMENT=	convert memos written in XML to the RFC format

MODPY_DISTV=	3.23.0
DISTNAME=	xml2rfc-${MODPY_DISTV}
REVISION=	1

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/ietf-tools/xml2rfc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= test.py

# from requirements.txt
RUN_DEPENDS=	sysutils/py-platformdirs \
		devel/py-configargparse \
		geo/py-google-i18n-address>=3 \
		devel/py-intervaltree \
		www/py-jinja2 \
		textproc/py-lxml \
		devel/py-country \
		textproc/py-yaml \
		www/py-requests \
		devel/py-wcwidth

TEST_DEPENDS+=	devel/py-decorator \
		print/py-pypdf \
		print/weasyprint \
		textproc/py-dict2xml \
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

COMMENT=	convert memos written in XML to the RFC format

GH_ACCOUNT=	ietf-tools
GH_PROJECT=	xml2rfc
GH_TAGNAME=	v3.30.2
#GH_TAGNAME=	v${MODPY_DISTV}
# bad version numbers in tags;
# https://github.com/ietf-tools/xml2rfc/issues/1264
MODPY_DISTV=	3.30.1

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/ietf-tools/xml2rfc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= test.py

# from pyproject.toml
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

TEST_DEPENDS=	devel/py-decorator \
		print/py-pypdf \
		print/weasyprint \
		textproc/py-dict2xml \
		fonts/noto/fonts \
		fonts/noto/cjk

# tests also need network access
PORTHOME=	${WRKDIR}
xpre-test:
	# hide pkg_resources DeprecationWarnings
	@ (echo '[pytest]'; \
	echo 'filterwarnings = ignore:.*pkg_resources.*:DeprecationWarning') \
	> ${WRKSRC}/pytest.ini

.include <bsd.port.mk>

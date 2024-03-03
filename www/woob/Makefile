COMMENT =	web outside of browsers

MODPY_EGG_VERSION =	3.6
REVISION =	0
DISTNAME =	woob-${MODPY_EGG_VERSION}

CATEGORIES =	www
HOMEPAGE =	https://woob.tech/

MAINTAINER =	Sebastien Marie <semarie@kapouay.eu.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

SITES =		https://gitlab.com/woob/woob/-/archive/${MODPY_EGG_VERSION}/

MODULES =	lang/python

# don't use PyPi (no man page, no tests)
MODPY_PI =	No
MODPY_PYBUILD =	setuptools

# dependencies from pyproject.toml
RUN_DEPENDS +=	textproc/py-lxml${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		converters/py-html2text${MODPY_FLAVOR} \
		textproc/py-unidecode${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		devel/py-babel${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		devel/py-country${MODPY_FLAVOR} \
		devel/py-rich${MODPY_FLAVOR}

# unlisted dependencies in woob/ and tools/
#  (dependencies for some tools, some features, ...)
RUN_DEPENDS +=	devel/py-colorama${MODPY_FLAVOR} \
		devel/py-simplejson${MODPY_FLAVOR} \
		textproc/py-feedparser${MODPY_FLAVOR} \
		textproc/py-pdfminer${MODPY_FLAVOR} \
		textproc/py-prettytable${MODPY_FLAVOR} \
		textproc/py-xlrd${MODPY_FLAVOR} \
		www/py-jwt${MODPY_FLAVOR} \
		www/py-selenium${MODPY_FLAVOR}

# executable dependencies (functions check_exec(), find_exe(), subprocess.call())
RUN_DEPENDS +=	net/curl \
		net/rtmpdump \
		security/gnupg \
		textproc/mupdf

# dependencies from requirements-dev.txt
TEST_DEPENDS +=	devel/py-asttokens${MODPY_FLAVOR} \
		devel/flake8 \
		devel/py-test-isort${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		textproc/py-prettytable${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
		textproc/sphinx \
		devel/py-virtualenv${MODPY_FLAVOR} \
		devel/pre-commit${MODPY_FLAVOR}
# missing
#  xunitparser
#  commitizen

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/* ${PREFIX}/man/man1/

.include <bsd.port.mk>

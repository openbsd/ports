COMMENT =	web outside of browsers

MODPY_DISTV =	3.7
DISTNAME =	woob-${MODPY_DISTV}
REVISION =	0

CATEGORIES =	www
HOMEPAGE =	https://woob.tech/

MAINTAINER =	Sebastien Marie <semarie@kapouay.eu.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

SITES =		https://gitlab.com/woob/woob/-/archive/${MODPY_DISTV}/

MODULES =	lang/python

# don't use PyPi (no man page, no tests)
MODPY_PI =	No
MODPY_PYBUILD =	setuptools

# dependencies from pyproject.toml
RUN_DEPENDS +=	textproc/py-lxml \
		www/py-requests \
		devel/py-dateutil \
		textproc/py-yaml \
		converters/py-html2text \
		textproc/py-unidecode \
		graphics/py-Pillow \
		devel/py-babel \
		sysutils/py-packaging \
		devel/py-country \
		devel/py-rich \
		graphics/py-termcolor

# unlisted dependencies in woob/ and tools/
#  (dependencies for some tools, some features, ...)
RUN_DEPENDS +=	devel/py-colorama \
		devel/py-simplejson \
		textproc/py-feedparser \
		textproc/py-pdfminer \
		textproc/py-prettytable \
		textproc/py-xlrd \
		security/py-josepy \
		www/py-jwt \
		www/py-selenium

# executable dependencies (functions check_exec(), find_exe(), subprocess.call())
RUN_DEPENDS +=	net/curl \
		net/rtmpdump \
		security/gnupg \
		textproc/mupdf

# dependencies from requirements-dev.txt
TEST_DEPENDS +=	devel/py-asttokens \
		devel/flake8 \
		devel/py-test-isort \
		devel/py-mock \
		textproc/py-prettytable \
		devel/py-test \
		textproc/sphinx \
		devel/py-virtualenv \
		devel/pre-commit \
		www/py-responses

# missing
#  xunitparser
#  commitizen

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/* ${PREFIX}/man/man1/

.include <bsd.port.mk>

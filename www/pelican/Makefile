COMMENT =		static site generator written in Python

MODPY_DISTV =		4.12.0
REVISION =		0
GH_ACCOUNT =		getpelican
GH_PROJECT =		pelican
GH_TAGNAME =		${MODPY_DISTV}

CATEGORIES =		www

# https://github.com/getpelican/pelican
HOMEPAGE =		https://blog.getpelican.com/

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		pdm

RUN_DEPENDS =		devel/py-blinker \
			textproc/py-docutils \
			www/py-feedgenerator \
			www/py-jinja2 \
			devel/py-ordered-set \
			textproc/py-pygments \
			devel/py-dateutil \
			devel/py-rich \
			textproc/py-unidecode \
			sysutils/py-watchfiles

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/git \
			devel/py-test-cov \
			devel/py-test-xdist \
			textproc/py-markdown \
			www/py-beautifulsoup4 \
			textproc/py-lxml \
			textproc/py-typogrify

.include <bsd.port.mk>


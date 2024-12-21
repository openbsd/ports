COMMENT =		static site generator written in Python

MODPY_DISTV =	${GH_TAGNAME}
DISTNAME =		pelican-${MODPY_DISTV}
REVISION =		3

GH_ACCOUNT =		getpelican
GH_PROJECT =		pelican
GH_TAGNAME =		4.7.2

CATEGORIES =		www

HOMEPAGE =		https://blog.getpelican.com/
MAINTAINER =		David Demelier <markand@malikania.fr>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-blinker \
			devel/py-dateutil \
			devel/py-rich \
			devel/py-tz \
			textproc/py-markdown \
			textproc/py-docutils \
			textproc/py-pygments \
			textproc/py-unidecode \
			www/py-feedgenerator \
			www/py-jinja2

# Else setuptools skips filenames containing UTF8 chars
MAKE_ENV +=		LC_CTYPE=en_US.UTF-8

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/git

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pelican/tests/test_pelican.py

.include <bsd.port.mk>

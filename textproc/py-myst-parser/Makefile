COMMENT =	extended commonmark parser that integrates with Sphinx

MODPY_DISTV =	5.1.0

DISTNAME =	myst_parser-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/_/-/}

CATEGORIES =	textproc

HOMEPAGE =	https://myst-parser.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	flit_core

RUN_DEPENDS =	textproc/py-markdown-it \
		textproc/py-mdit-py-plugins \
                textproc/py-yaml \
                textproc/py-docutils \
                textproc/py-sphinx \
                www/py-jinja2

.include <bsd.port.mk>

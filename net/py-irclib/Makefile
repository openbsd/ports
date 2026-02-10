COMMENT=	Internet Relay Chat (IRC) protocol client library for Python

MODPY_DISTV=	0.8.1
DISTNAME=	py_irclib-${MODPY_DISTV}
PKGNAME=	py-irclib-${MODPY_DISTV}

CATEGORIES=	net

HOMEPAGE=	https://github.com/TotallyNotRobots/py-irclib

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

# these tests need "irc-parser-tests"
MODPY_PYTEST_ARGS= --ignore tests/parser_test.py \
		   --ignore tests/test_masks.py

.include <bsd.port.mk>

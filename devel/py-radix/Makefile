COMMENT =		Radix tree implementation for Python

GH_ACCOUNT =		SEKOIA-IO
GH_PROJECT =		py-radix
GH_TAGNAME =		682a1b96fb5b9599bc4baf11c0ab08b2be4fe783
MODPY_EGG_VERSION =	1.0.1

DISTNAME =		py-radix-${MODPY_EGG_VERSION}pre20220302
CATEGORIES=		devel net
REVISION =		1

# fork from https://github.com/mjschultz/py-radix/
HOMEPAGE =		https://github.com/SEKOIA-IO/py-radix/

MAINTAINER =		Job Snijders <job@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PYBUILD =		setuptools

FLAVORS=		python3
FLAVOR=			python3

MODULES =		lang/python
WANTLIB +=		${MODPY_WANTLIB} pthread

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR}

# Tests aren't included in pypi tarball for now
# https://github.com/mjschultz/py-radix/pull/43

.include <bsd.port.mk>

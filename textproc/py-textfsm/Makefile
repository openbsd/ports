COMMENT =		parse semi-structured text into Python table

MODPY_DISTV =	1.1.3
DISTNAME =		textfsm-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/google/textfsm

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-future \
			devel/py-six

.include <bsd.port.mk>

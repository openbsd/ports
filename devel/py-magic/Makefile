MODPY_DISTV =	0.4.15
COMMENT =		Python module for file type identification using libmagic
DISTNAME =		python-magic-${MODPY_DISTV}
PKGNAME =		py-magic-${MODPY_DISTV}
EPOCH =			0
CATEGORIES =		devel
REVISION =		8

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/libmagic

# Broken tests
NO_TEST =		Yes

.include <bsd.port.mk>

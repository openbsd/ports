MODPY_DISTV =	5.1
COMMENT =	Python interface to libarchive
DISTNAME =	libarchive-c-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	archivers devel
REVISION =	0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# CC0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	archivers/libarchive
TEST_DEPENDS =	devel/py-mock

.include <bsd.port.mk>

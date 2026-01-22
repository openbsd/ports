COMMENT =		backport of zstd support in Python 3.14

MODPY_DISTV =		1.3.0
DISTNAME =		backports_zstd-${MODPY_DISTV}
PKGNAME =		py-backports-zstd-${MODPY_DISTV}
CATEGORIES =		archivers

WANTLIB =		zstd

CFLAGS =		-I${LOCALBASE}/include

# PSF-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

LIB_DEPENDS =		archivers/zstd

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYBUILD_ARGS =	--config-setting=--build-option=--system-zstd
BUILD_DEPENDS =		devel/py-cffi

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>

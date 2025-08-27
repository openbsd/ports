COMMENT =		zstd bindings for python

MODPY_DISTV =		1.5.7.2
DISTNAME =		zstd-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		archivers
HOMEPAGE =		https://github.com/sergey-dryabzhinsky/python-zstd
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		zstd

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

LIB_DEPENDS =		archivers/zstd

MAKE_ENV =		ZSTD_EXTERNAL=true

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>

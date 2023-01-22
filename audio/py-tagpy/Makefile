COMMENT =		Python bindings to TagLib audio file tag library

MODPY_EGG_VERSION =	2022.1
DISTNAME =		tagpy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		audio devel

HOMEPAGE =		https://mathema.tician.de/software/tagpy

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_python${MODPY_VERSION:C/\.//g} m tag

COMPILER =		base-clang ports-gcc base-gcc

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

LIB_DEPENDS =		audio/taglib \
			devel/boost

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>

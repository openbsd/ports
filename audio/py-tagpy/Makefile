COMMENT =		Python bindings to TagLib audio file tag library

MODPY_DISTV =	2022.1
DISTNAME =		tagpy-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

REVISION =		2

CATEGORIES =		audio devel

HOMEPAGE =		https://mathema.tician.de/software/tagpy

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_python${MODPY_VERSION:C/\.//g} m tag

COMPILER =		base-clang ports-gcc base-gcc

CFLAGS_base-clang =	-D_LIBCPP_ENABLE_CXX17_REMOVED_AUTO_PTR

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

LIB_DEPENDS =		audio/taglib \
			devel/boost

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>

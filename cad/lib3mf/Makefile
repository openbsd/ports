
V =		2.4.1
REVISION =	0

COMMENT =	implementation of the 3D Manufacturing Format file standard
GH_ACCOUNT =	3MFConsortium
GH_PROJECT =	lib3mf
GH_TAGNAME =	v${V}

CATEGORIES =	cad

# BSD-2-Clause license
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake lang/python
COMPILER =	base-clang ports-gcc base-gcc

SHARED_LIBS +=	3mf			0.0 # 0.0

BUILD_DEPENDS =	devel/gtest

LIB_DEPENDS =	archivers/libzip

CONFIGURE_ARGS =	-DUSE_INCLUDED_ZLIB=OFF \
			-DUSE_INCLUDED_LIBZIP=OFF \
			-DUSE_INCLUDED_SSL=OFF \
			-DCMAKE_INSTALL_INCLUDEDIR=include/lib3mf

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/include/Bindings/Python/Lib3MF.py

.include <bsd.port.mk>

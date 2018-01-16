# $OpenBSD: Makefile,v 1.2 2018/01/16 08:16:37 ajacoutot Exp $

COMMENT =	automated OpenGL and OpenCL testsuite

DISTNAME =	piglit-20180108

GH_ACCOUNT =	mesa3d
GH_PROJECT =	piglit
GH_COMMIT =	8eefd87ed7a7be9b181bbe7d12a6f6c54921d522

CATEGORIES =	graphics

# 3Dlabs: redistribution and use permitted, no comment on selling
# Intel CUSTOM LICENSE - no limitation to use, distribute, or sell
# MIT GPLv2+ GPLv3 LGPL20
PERMIT_PACKAGE_CDROM =	No comment on selling by 3Dlabs license
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL X11 Xrender c drm drm_intel
WANTLIB += m xcb xcb-dri2 z
WANTLIB += png waffle-1

MODULES =		devel/cmake \
			lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

BUILD_DEPENDS =		www/py-mako \
			graphics/waffle \
			devel/py-six \
			math/py-numpy

LIB_DEPENDS =		graphics/waffle \
			graphics/png

CONFIGURE_ARGS =	-DPIGLIT_BUILD_CL_TESTS:BOOL=OFF \
			-DCMAKE_POLICY_DEFAULT_CMP0056:STRING=NEW
CONFIGURE_ENV =		CFLAGS="-I${X11BASE}/include"

NO_TEST =		Yes

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/lib/piglit

.include <bsd.port.mk>

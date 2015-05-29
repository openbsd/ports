# $OpenBSD: Makefile,v 1.12 2015/05/29 11:20:01 ajacoutot Exp $

COMMENT =		Python bindings for OpenGL
MODPY_EGG_VERSION =	3.0.2
DISTNAME =		PyOpenGL-${MODPY_EGG_VERSION}
PKGNAME =		py-opengl-${MODPY_EGG_VERSION}

CATEGORIES =		graphics
HOMEPAGE =		http://pyopengl.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		graphics/freeglut

TEST_IS_INTERACTIVE =	 X11

TEST_DEPENDS =		${BASE_PKGPATH} \
			devel/pygame \
			math/py-numpy

do-test:
	${MODPY_BIN} ${WRKSRC}/tests/tests.py

.include <bsd.port.mk>

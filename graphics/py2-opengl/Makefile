COMMENT =		Python bindings for OpenGL
MODPY_DISTV =	3.1.7
DISTNAME =		PyOpenGL-${MODPY_DISTV}
PKGNAME =		py-opengl-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		graphics
HOMEPAGE =		https://pyopengl.sourceforge.net/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		graphics/freeglut

# multi version py2+3 test infrastructure using virtualenv,
# not handled in this port yet
NO_TEST =	Yes

.include <bsd.port.mk>

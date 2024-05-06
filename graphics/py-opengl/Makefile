COMMENT =		Python bindings for OpenGL
MODPY_EGG_VERSION =	3.1.7
DISTNAME =		PyOpenGL-${MODPY_EGG_VERSION}
PKGNAME =		py-opengl-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		graphics
HOMEPAGE =		https://pyopengl.sourceforge.net/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

# py2 still used by fretsonfire
FLAVORS=		python3
FLAVOR?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		graphics/freeglut

# multi version py2+3 test infrastructure using virtualenv,
# not handled in this port yet
NO_TEST =	Yes

.include <bsd.port.mk>

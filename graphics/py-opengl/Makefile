COMMENT =		Python bindings for OpenGL
MODPY_DISTV =		3.1.9
DISTNAME =		pyopengl-${MODPY_DISTV}
PKGNAME =		py-opengl-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		graphics
HOMEPAGE =		https://pyopengl.sourceforge.net/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

LIB_DEPENDS =		graphics/freeglut

# multi version py2+3 test infrastructure using virtualenv,
# not handled in this port yet
NO_TEST =		Yes

post-install:
	rm -r ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/OpenGL/DLLS

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:09 sthen Exp $

COMMENT =		Python bindings for OpenGL
MODPY_EGG_VERSION =	3.1.3b2
DISTNAME =		PyOpenGL-${MODPY_EGG_VERSION}
PKGNAME =		py-opengl-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		graphics
HOMEPAGE =		http://pyopengl.sourceforge.net/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS=		python3
FLAVOR?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		graphics/freeglut

# multi version py2+3 test infrastructure using virtualenv,
# not handled in this port yet
NO_TEST =	Yes

.include <bsd.port.mk>

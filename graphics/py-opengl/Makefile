# $OpenBSD: Makefile,v 1.18 2020/07/03 21:12:55 sthen Exp $

COMMENT =		Python bindings for OpenGL
MODPY_EGG_VERSION =	3.1.3b2
DISTNAME =		PyOpenGL-${MODPY_EGG_VERSION}
PKGNAME =		py-opengl-${MODPY_EGG_VERSION}
REVISION =		1

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

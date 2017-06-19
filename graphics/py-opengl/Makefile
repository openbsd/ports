# $OpenBSD: Makefile,v 1.14 2017/06/19 18:26:30 landry Exp $

COMMENT =		Python bindings for OpenGL
MODPY_EGG_VERSION =	3.1.0
DISTNAME =		PyOpenGL-${MODPY_EGG_VERSION}
PKGNAME =		py-opengl-${MODPY_EGG_VERSION}

CATEGORIES =		graphics
HOMEPAGE =		http://pyopengl.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

FLAVORS=		python3
FLAVOR?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

LIB_DEPENDS =		graphics/freeglut

.if ${FLAVOR:Mpython3}
NO_TEST =	Yes
.else
TEST_IS_INTERACTIVE =	 X11

TEST_DEPENDS =		${BASE_PKGPATH} \
			devel/pygame \
			math/py-numpy

do-test:
	${MODPY_BIN} ${WRKSRC}/tests/tests.py
.endif

.include <bsd.port.mk>

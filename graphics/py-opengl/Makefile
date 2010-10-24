# $OpenBSD: Makefile,v 1.3 2010/10/24 21:21:01 ajacoutot Exp $

COMMENT =		Python bindings for OpenGL
MODPY_EGG_VERSION =	3.0.0
DISTNAME =		PyOpenGL-${MODPY_EGG_VERSION}
PKGNAME =		py-opengl-${MODPY_EGG_VERSION}
REVISION=		0
WANTLIB =		GL GLU

CATEGORIES =		graphics
HOMEPAGE =		http://pyopengl.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pyopengl/}

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
REGRESS_IS_INTERACTIVE = X11

LIB_DEPENDS =		glut.>=4::graphics/freeglut
REGRESS_DEPENDS =	::devel/pygame \
			::graphics/py-opengl \
			::math/py-numpy

do-regress:
	${MODPY_BIN} ${WRKSRC}/tests/tests.py

.include <bsd.port.mk>

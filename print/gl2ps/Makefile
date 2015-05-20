# $OpenBSD: Makefile,v 1.1.1.1 2015/05/20 12:04:59 pirofti Exp $

COMMENT =		OpenGL to PostScript printing library

DISTNAME =		gl2ps-1.3.8

SHARED_LIBS =		gl2ps	0.0 # 1.3

CATEGORIES =		print

HOMEPAGE =		http://www.geuz.org/gl2ps/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL GLU Xi Xmu glut png z

MASTER_SITES =		http://geuz.org/gl2ps/src/

EXTRACT_SUFX =		.tgz

MODULES =		devel/cmake
BUILD_DEPENDS =		print/texlive/base
LIB_DEPENDS =		graphics/freeglut \
			graphics/png

WRKSRC =		${WRKDIR}/${DISTNAME}-source

.include <bsd.port.mk>

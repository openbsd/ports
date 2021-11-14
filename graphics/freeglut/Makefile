# $OpenBSD: Makefile,v 1.22 2021/11/14 15:26:01 sthen Exp $

COMMENT =		open source alternative to glut

DISTNAME =		freeglut-3.2.1

SHARED_LIBS +=  glut                      7.0

CATEGORIES =		graphics

HOMEPAGE =		http://freeglut.sourceforge.net/

# X11
PERMIT_PACKAGE =	Yes

WANTLIB += GL ICE SM X11 Xext Xi Xrandr Xxf86vm m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=freeglut/}

MODULES =		devel/cmake

NO_TEST =		Yes

.include <bsd.port.mk>

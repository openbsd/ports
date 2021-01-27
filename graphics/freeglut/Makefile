# $OpenBSD: Makefile,v 1.21 2021/01/27 21:01:12 naddy Exp $

COMMENT =		open source alternative to glut

DISTNAME =		freeglut-3.0.0
REVISION =		1

SHARED_LIBS +=  glut                      6.0 # 3.10

CATEGORIES =		graphics

HOMEPAGE =		http://freeglut.sourceforge.net/

# X11
PERMIT_PACKAGE =	Yes

WANTLIB += GL ICE SM X11 Xext Xi Xrandr Xxf86vm m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=freeglut/}

MODULES =		devel/cmake

NO_TEST =		Yes

.include <bsd.port.mk>

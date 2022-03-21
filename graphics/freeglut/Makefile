COMMENT =		open source alternative to glut

DISTNAME =		freeglut-3.2.2

SHARED_LIBS +=  glut                      7.0

CATEGORIES =		graphics

HOMEPAGE =		http://freeglut.sourceforge.net/

# X11
PERMIT_PACKAGE =	Yes

WANTLIB += GL X11 Xi Xrandr Xxf86vm m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=freeglut/}

MODULES =		devel/cmake

NO_TEST =		Yes

.include <bsd.port.mk>

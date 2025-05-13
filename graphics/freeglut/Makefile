COMMENT =	open source alternative to glut

V =		3.6.0
DISTNAME =	freeglut-$V

SHARED_LIBS +=  glut                      8.0

CATEGORIES =	graphics

HOMEPAGE =	https://freeglut.sourceforge.net/
SITES =		https://github.com/freeglut/freeglut/releases/download/v$V/

# X11
PERMIT_PACKAGE = Yes

WANTLIB += GL X11 Xi Xrandr Xxf86vm m

MODULES =	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>

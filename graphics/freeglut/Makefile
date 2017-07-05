# $OpenBSD: Makefile,v 1.18 2017/07/05 21:29:42 rsadowski Exp $

COMMENT =		open source alternative to glut

DISTNAME =		freeglut-3.0.0

SHARED_LIBS +=  glut                      6.0 # 3.10

CATEGORIES =		graphics

HOMEPAGE =		http://freeglut.sourceforge.net/

MAINTAINER =		Tobias Ulmer <tobiasu@tmux.org>

# X11
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL ICE SM X11 Xext Xi Xrandr Xxf86vm m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=freeglut/}

MODULES =		devel/cmake

NO_TEST =		Yes

.include <bsd.port.mk>

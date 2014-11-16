# $OpenBSD: Makefile,v 1.5 2014/11/16 11:41:21 sebastia Exp $

COMMENT =	graphical SRCP client to control a digital model railway

DISTNAME =	spdrs60-0.5.7
CATEGORIES =	misc x11

HOMEPAGE =	http://spdrs60.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=spdrs60/}

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		x11/qt3
WANTLIB += GL ICE SM X11 Xcursor Xext Xft Xi Xinerama Xmu Xrandr
WANTLIB += Xrender c fontconfig freetype jpeg lcms m mng png pthread
WANTLIB += stdc++ z

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${MODQT_CONFIGURE_ARGS} --disable-html-doc
CONFIGURE_ENV +=	LDFLAGS="`pkg-config --libs qt-mt`"

.include <bsd.port.mk>

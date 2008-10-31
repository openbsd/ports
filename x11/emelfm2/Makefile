# $OpenBSD: Makefile,v 1.2 2008/10/31 00:03:12 landry Exp $

COMMENT =		GTK+2 file manager

DISTNAME =		emelfm2-0.5.0
PKGNAME =		${DISTNAME}p0
CATEGORIES =		x11
HOMEPAGE =		http://emelfm2.net/

MAINTAINER =		Giovanni Bechis <g.bechis@snb.it>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}rel/
WRKDIST =	${WRKDIR}/emelfm2-0.5
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext

LIB_DEPENDS =	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

RUN_DEPENDS =	::devel/desktop-file-utils \
		::devel/xdg-utils

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png \
		pthread z

USE_X11 =	Yes
USE_GMAKE =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>

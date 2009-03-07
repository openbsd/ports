# $OpenBSD: Makefile,v 1.3 2009/03/07 14:23:24 jasper Exp $

COMMENT =		GTK+2 file manager

DISTNAME =		emelfm2-0.5.0
PKGNAME =		${DISTNAME}p1
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

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread z

USE_X11 =	Yes
USE_GMAKE =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>

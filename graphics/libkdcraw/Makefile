# $OpenBSD: Makefile,v 1.15 2013/07/08 21:56:45 zhuk Exp $

COMMENT =	grab raw data from digital cameras

DISTNAME =	libkdcraw-0.1.9
REVISION =	5
CATEGORIES =	graphics devel

HOMEPAGE =	http://www.kipi-plugins.org/drupal/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=kipi/}
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS +=		kdcraw               2.0      # .3.0
MODULES =		devel/gettext \
			x11/kde
MODKDE_VERSION =	3.5.8

SHARED_ONLY =		Yes
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61

CONFIGURE_ARGS =	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV} \
			CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib
MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS}
USE_GMAKE =		Yes

LIB_DEPENDS +=		graphics/lcms \
			x11/kde/libs3
RUN_DEPENDS =		graphics/dcraw \
			x11/gtk+2,-guic

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 drm expat
WANTLIB += fontconfig freetype idn jpeg lcms m mng png stdc++ util xcb
WANTLIB += z 
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient

# GPL
PERMIT_PACKAGE_CDROM = Yes

MODKDE_LIB_LINKS =	Yes

.include <bsd.port.mk>

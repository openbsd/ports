# $OpenBSD: Makefile,v 1.26 2013/07/08 21:56:45 zhuk Exp $

COMMENT =		kde image plugins api
CATEGORIES =		graphics devel x11 x11/kde
V =			0.1.6
DISTNAME =		libkipi-$V
REVISION =		6
SHARED_LIBS +=	kipi                 1.4      # .2.0
EXTRACT_SUFX =		.tar.bz2
HOMEPAGE =		http://extragear.kde.org/apps/kipi/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kipi/}

SHARED_ONLY =		Yes

RUN_DEPENDS =		x11/gtk+2,-guic
LIB_DEPENDS =		x11/kde/libs3

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 drm expat
WANTLIB += fontconfig freetype idn jpeg lcms lib/qt3/qt-mt>=3.33 m mng
WANTLIB += png stdc++ util xcb z 
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient

MODULES =	x11/kde devel/gettext

LIBTOOL_FLAGS +=	--tag=disable-static
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
MODKDE_VERSION =	3.5.7
AUTOCONF =		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE =		Yes
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
MAKE_ENV =		${CONFIGURE_ENV}

MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS}
MAKE_FLAGS +=		LIBRESOLV=
SUBST_VARS +=		V

# GPL
PERMIT_PACKAGE_CDROM =		Yes

MODKDE_LIB_LINKS =	Yes

.include <bsd.port.mk>

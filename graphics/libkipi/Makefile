# $OpenBSD: Makefile,v 1.36 2015/08/19 18:55:04 sthen Exp $

COMMENT-main =		KDE image plugins API
COMMENT-icons =		icons for libkipi
CATEGORIES =		graphics devel x11 x11/kde
V =			0.1.6
DISTNAME =		libkipi-$V
PKGNAME-main =		${PKGNAME}
PKGNAME-icons =		libkipi-icons-$V
PKGSPEC-main =		libkipi-<1
REVISION-main =		12
REVISION-icons =	5

SHARED_LIBS +=	kipi                 1.4      # .2.0

EXTRACT_SUFX =		.tar.bz2
HOMEPAGE =		http://extragear.kde.org/apps/kipi/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kipi/}

SHARED_ONLY =		Yes

LIB_DEPENDS =		x11/kde/libs3
LIB_DEPENDS-icons =

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			STEM-*|kde4-libkipi-icons-*:${BUILD_PKGPATH},-icons
RUN_DEPENDS-icons =	x11/gtk+3,-guic

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 drm expat fam
WANTLIB += fontconfig freetype idn jpeg lcms lib/qt3/qt-mt>=3.33 m mng
WANTLIB += png pthread pthread-stubs stdc++ util xcb z
WANTLIB += X11-xcb Xau Xdmcp glapi xcb-dri2 xcb-glx
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient
WANTLIB-icons =

MULTI_PACKAGES =	-main -icons
MODULES =		x11/kde devel/gettext

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.61
MODKDE_VERSION =	3.5.7
AUTOCONF =		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS}
SEPARATE_BUILD =	Yes
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
MAKE_ENV =		${CONFIGURE_ENV}

MAKE_FLAGS +=		${MODKDE_MAKE_FLAGS}
MAKE_FLAGS +=		LIBRESOLV=
SUBST_VARS +=		V

# GPL
PERMIT_PACKAGE_CDROM =	Yes

MODKDE_LIB_LINKS =	Yes

.include <bsd.port.mk>

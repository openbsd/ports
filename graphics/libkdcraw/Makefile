# $OpenBSD: Makefile,v 1.22 2015/08/17 20:34:21 sthen Exp $

COMMENT-main =	grab raw data from digital cameras
COMMENT-icons =	icons for libkdcraw

CATEGORIES =	graphics devel
V =		0.1.9
DISTNAME =	libkdcraw-${V}
PKGNAME-main =	${PKGNAME}
PKGNAME-icons =	libkdcraw-icons-${V}
REVISION-main =	11
REVISION-icons =2

PKGSPEC-main =	libkdcraw-<0.2.0

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

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			graphics/lcms \
			x11/kde/libs3
LIB_DEPENDS-icons =

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			graphics/dcraw \
			STEM-*|kde4-libkdcraw-icons-*:${BUILD_PKGPATH},-icons
RUN_DEPENDS-icons =	x11/gtk+3,-guic

WANTLIB-main =  ${WANTLIB}
WANTLIB-main += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB-main += Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 drm expat fam
WANTLIB-main += fontconfig freetype idn jpeg lcms m mng png pthread
WANTLIB-main += pthread-stubs stdc++ util xcb z
WANTLIB-main += X11-xcb Xau Xdmcp glapi xcb-dri2 xcb-glx
WANTLIB-main += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB-main += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient
WANTLIB-icons =

# GPL
PERMIT_PACKAGE_CDROM = Yes

MULTI_PACKAGES =	-main -icons

MODKDE_LIB_LINKS =	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.23 2015/08/17 20:34:21 sthen Exp $

COMMENT =	kde wrapper around exiv2
CATEGORIES =	graphics
DISTNAME =	libkexiv2-0.1.9
REVISION =	10
HOMEPAGE =	http://sourceforge.net/projects/kipi/
EXTRACT_SUFX =	.tar.bz2
PKGSPEC =	libkexiv2-<0.2.0

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kipi/}
CONFIGURE_STYLE =	autoconf
MODGNU_CONFIG_GUESS_DIRS =	${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS +=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}

SHARED_LIBS +=	kexiv2                  3.0   # .5.0

SHARED_ONLY =		Yes
AUTOCONF_VERSION =	2.61
MODKDE_VERSION =	3.5.7
MODULES =		devel/gettext \
			x11/kde

# GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx
WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama Xmu
WANTLIB += Xrandr Xrender Xt Xxf86vm art_lgpl_2 drm exiv2 expat
WANTLIB += fontconfig freetype idn jpeg lcms m mng png stdc++ util xcb
WANTLIB += xcb-glx z X11-xcb Xau Xdmcp glapi pthread pthread-stubs xcb-dri2

LIB_DEPENDS =	graphics/exiv2>=0.22 \
		x11/kde/libs3

MODKDE_LIB_LINKS =	Yes

.include <bsd.port.mk>

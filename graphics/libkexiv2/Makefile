# $OpenBSD: Makefile,v 1.13 2011/10/30 22:25:22 jasper Exp $

COMMENT =	kde wrapper around exiv2
CATEGORIES =	graphics
DISTNAME =	libkexiv2-0.1.9
REVISION =	2
HOMEPAGE =	http://www.kipi-plugins.org/
EXTRACT_SUFX =	.tar.bz2

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
PERMIT_DISTFILES_CDROM =Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += DCOP GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2
WANTLIB += drm exiv2 expat fontconfig freetype idn jpeg kdecore
WANTLIB += kdefx lcms m mng png stdc++ util xcb z

LIB_DEPENDS =	graphics/exiv2>=0.22 \
		x11/kde/libs3

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2010/11/17 19:37:49 jasper Exp $

COMMENT =	kde wrapper around exiv2
CATEGORIES =	graphics
DISTNAME =	libkexiv2-0.1.9
REVISION =	0
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

WANTLIB =	ICE SM X11 Xext Xrender jpeg m png \
		util z idn art_lgpl_2 Xau Xdmcp expat \
		pthread-stubs xcb exiv2>=0.1 kdecore>=7 DCOP kdefx
LIB_DEPENDS =	graphics/exiv2>=0.12 \
		x11/kde/libs3

.include <bsd.port.mk>

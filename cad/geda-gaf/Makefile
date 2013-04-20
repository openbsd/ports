# $OpenBSD: Makefile,v 1.15 2013/04/20 02:50:16 bentley Exp $

COMMENT =		suite of tools for electronic design automation
DISTNAME =		geda-gaf-1.6.0
CATEGORIES =		cad
HOMEPAGE =		http://geda.seul.org
MAINTAINER =		Edd Barrett <edd@openbsd.org>

REVISION =		6

SHARED_LIBS = 		geda	0.0	# 38.0
USE_GROFF =	Yes

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
			expat fontconfig freetype ltdl m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
			png pthread pthread-stubs xcb xcb-render \
			z gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
			gobject-2.0 gmodule-2.0 guile gmp gtk-x11-2.0 \
			gdk-x11-2.0 gthread-2.0 \
			GL Xxf86vm drm ffi stdc++ xcb-shm

MASTER_SITES =		http://geda.seul.org/release/v1.6/1.6.0/

MODULES =		devel/gettext

LIB_DEPENDS =		devel/glib2 \
			x11/gtk+2 \
			lang/guile \
			devel/gmp

# these are checked by configure
BUILD_DEPENDS =		misc/shared-mime-info \
			devel/desktop-file-utils

RUN_DEPENDS = 		misc/shared-mime-info \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-update-xdg-database
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-tools

# This confuses update-patches.
post-extract:
	@rm -f ${WRKSRC}/gnetlist/examples/vams/gschemrc.orig

# MAKE_ENV hoses the regression test, so we do this manually
do-test:
	cd ${WRKSRC} && ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
		-f ${MAKE_FILE} ${TEST_TARGET} ${TEST_LOG}

.include <bsd.port.mk>

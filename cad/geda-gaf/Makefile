# $OpenBSD: Makefile,v 1.35 2019/07/12 20:43:45 sthen Exp $

COMMENT =		suite of tools for electronic design automation
DISTNAME =		geda-gaf-1.6.0
CATEGORIES =		cad
HOMEPAGE =		http://wiki.geda-project.org/geda:gaf
MAINTAINER =		Edd Barrett <edd@openbsd.org>

REVISION =		20

SHARED_LIBS = 		geda	0.0	# 38.0

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 guile harfbuzz iconv intl ltdl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread ${COMPILER_LIBCXX}
WANTLIB += xcb xcb-render xcb-shm z fribidi

MASTER_SITES =		http://geda.seul.org/release/v1.6/1.6.0/

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/glib2 \
			x11/gtk+2 \
			lang/guile \
			devel/gmp

# these are checked by configure
BUILD_DEPENDS =		misc/shared-mime-info \
			devel/desktop-file-utils

RUN_DEPENDS = 		misc/shared-mime-info \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-update-xdg-database
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-tools

# This confuses update-patches.
post-extract:
	rm ${WRKSRC}/gnetlist/examples/vams/gschemrc.orig

# MAKE_ENV hoses the regression test, so we do this manually
do-test:
	cd ${WRKSRC} && ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
		-f ${MAKE_FILE} ${TEST_TARGET} ${TEST_LOG}

.include <bsd.port.mk>

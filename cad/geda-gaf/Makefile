# $OpenBSD: Makefile,v 1.5 2010/10/12 20:29:20 jasper Exp $

COMMENT =		suite of tools for electronic design automation
DISTNAME =		geda-gaf-1.6.0
CATEGORIES =		cad
HOMEPAGE =		http://geda.seul.org
MAINTAINER =		Edd Barrett <edd@openbsd.org>

REVISION =		2

SHARED_LIBS = 		geda	0.0	# 38.0
USE_LIBTOOL =		Yes

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
			expat fontconfig freetype ltdl m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
			png pthread pthread-stubs xcb xcb-render \
			xcb-render-util z gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
			gobject-2.0 gmodule-2.0 guile gmp gtk-x11-2.0 \
			gdk-x11-2.0 gthread-2.0

MASTER_SITES =		http://geda.seul.org/release/v1.6/1.6.0/

MODULES =		devel/gettext

LIB_DEPENDS =		::devel/glib2 \
			::x11/gtk+2 \
			::lang/guile \
			::devel/gmp

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS = 		:shared-mime-info-*:misc/shared-mime-info \
			:desktop-file-utils-*:devel/desktop-file-utils

USE_X11 =		Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-tools

# This confuses update-patches.
post-extract:
	@rm -f ${WRKSRC}/gnetlist/examples/vams/gschemrc.orig

# MAKE_ENV hoses the regression test, so we do this manually
do-regress:
	cd ${WRKSRC} && ${MAKE_PROGRAM} ${ALL_REGRESS_FLAGS} \
		-f ${MAKE_FILE} ${REGRESS_TARGET} ${REGRESS_LOG}

.include <bsd.port.mk>

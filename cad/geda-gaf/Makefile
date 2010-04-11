# $OpenBSD: Makefile,v 1.1.1.1 2010/04/11 22:22:39 edd Exp $

COMMENT =		suite of tools for electronic design automation
DISTNAME =		geda-gaf-1.6.0
CATEGORIES =		cad
HOMEPAGE =		http://geda.seul.org
MAINTAINER =		Edd Barrett <edd@openbsd.org>

SHARED_LIBS = 		geda	0.0	# 38.0
USE_LIBTOOL =		Yes

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
			expat fontconfig freetype glitz iconv intl ltdl m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
			png pthread pthread-stubs xcb xcb-render \
			xcb-render-util z

MASTER_SITES =		http://geda.seul.org/release/v1.6/1.6.0/

LIB_DEPENDS =		gio-2.0,glib-2.0,gobject-2.0,gmodule-2.0::devel/glib2 \
			gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2 \
			guile::lang/guile \
			gmp::devel/gmp

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

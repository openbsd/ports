# $OpenBSD: Makefile,v 1.1.1.1 2014/09/02 13:29:57 landry Exp $

V =			0.2.9
COMMENT =		pdf viewer with vi-like keybindings
DISTNAME =		zathura-${V}
CATEGORIES =		textproc x11

HOMEPAGE =		http://pwmt.org/projects/zathura/

MODULES =		devel/gettext

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girara-gtk3 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 m magic pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread sqlite3 z

MASTER_SITES =	http://pwmt.org/projects/zathura/download/

BUILD_DEPENDS =	textproc/py-docutils
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	graphics/gdk-pixbuf2 \
		devel/libmagic \
		x11/girara

MAKE_FLAGS =	MANPREFIX=${PREFIX}/man \
		DESKTOPPREFIX=${PREFIX}/share/applications \
		TPUT=true \
		CC="${CC}" \
		VERBOSE=1
FAKE_FLAGS =	PREFIX=${TRUEPREFIX}

USE_GMAKE =	Yes

TEST_DEPENDS =	devel/check
TEST_TARGET =	test
TEST_IS_INTERACTIVE =X11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/zathura

.include <bsd.port.mk>


# $OpenBSD: Makefile,v 1.9 2016/10/17 08:37:44 sthen Exp $

V =			0.3.6
REVISION =		0
COMMENT =		document viewer for PDF and other formats with a vi-like UI
DISTNAME =		zathura-${V}
CATEGORIES =		textproc x11

HOMEPAGE =		http://pwmt.org/projects/zathura/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girara-gtk3 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 intl m magic pango-1.0 pangocairo-1.0
WANTLIB += pthread sqlite3

MASTER_SITES =	http://pwmt.org/projects/zathura/download/

BUILD_DEPENDS =	textproc/py-docutils \
		devel/gettext-tools
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	databases/sqlite3 \
		graphics/gdk-pixbuf2 \
		devel/libmagic \
		x11/girara>=0.2.3

MAKE_FLAGS =	MANPREFIX=${PREFIX}/man \
		DESKTOPPREFIX=${PREFIX}/share/applications \
		TPUT=true \
		CC="${CC}" \
		VERBOSE=1 \
		WITH_SYNCTEX=0
FAKE_FLAGS =	PREFIX=${TRUEPREFIX}

USE_GMAKE =	Yes

MODULES =	gcc4
MODGCC4_ARCHS =	*

TEST_DEPENDS =	devel/check
TEST_TARGET =	test
TEST_IS_INTERACTIVE =X11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/zathura

.include <bsd.port.mk>


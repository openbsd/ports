# $OpenBSD: Makefile,v 1.26 2019/07/12 20:50:17 sthen Exp $

V =			0.4.3
REVISION =		0
COMMENT =		document viewer for PDF and other formats with a vi-like UI
DISTNAME =		zathura-${V}
CATEGORIES =		textproc x11
EXTRACT_SUFX =		.tar.xz

HOMEPAGE =		https://pwmt.org/projects/zathura/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girara-gtk3 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 intl m magic pango-1.0 pangocairo-1.0 pthread
WANTLIB += sqlite3 synctex

MASTER_SITES =	https://pwmt.org/projects/zathura/download/

MODULES=	devel/meson
BUILD_DEPENDS =	textproc/py-docutils \
		devel/gettext,-tools \
		textproc/py-sphinx
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS =	databases/sqlite3 \
		devel/libmagic \
		x11/girara>=0.3.2 \
		print/texlive/base,-synctex

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c
CONFIGURE_ENV +=	LDFLAGS=-L${LOCALBASE}/lib
CONFIGURE_ARGS +=	-Dsynctex=enabled \
			-Dseccomp=disabled \
			-Dtests=disabled

TEST_DEPENDS =	devel/check
TEST_TARGET =	test
TEST_IS_INTERACTIVE =X11

post-install:
	# install placeholder for plugins
	${INSTALL_DATA_DIR} ${PREFIX}/lib/zathura

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.62 2019/07/12 21:42:15 sthen Exp $

BROKEN-hppa =	no atomic ops / __sync_fetch_and_add_4
BROKEN-alpha =	tinylock.c:58: internal compiler error: in extract_insn, at recog.c:2077

COMMENT =		graphical audio player which supports lots of formats

DISTNAME =		audacious-3.9
REVISION =		2

SHARED_LIBS +=		audcore		4.0 	# 5.0
SHARED_LIBS +=		audgui		4.0	# 5.0
SHARED_LIBS +=		audtag		3.0	# 3.0

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 z

MASTER_SITES =		http://distfiles.audacious-media-player.org/

EXTRACT_SUFX =		.tar.bz2

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		x11/gtk+2

MAKE_ENV =		LIBaudcore_VERSION=${LIBaudcore_VERSION} \
			LIBaudgui_VERSION=${LIBaudgui_VERSION} \
			LIBaudtag_VERSION=${LIBaudtag_VERSION}

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

NO_TEST =	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.57 2017/09/08 15:44:15 dcoppa Exp $

BROKEN-hppa =	no atomic ops / __sync_fetch_and_add_4
BROKEN-alpha =	tinylock.c:58: internal compiler error: in extract_insn, at recog.c:2077

COMMENT =		graphical audio player which supports lots of formats

DISTNAME =		audacious-3.9

SHARED_LIBS +=		audcore		4.0 	# 5.0
SHARED_LIBS +=		audgui		4.0	# 5.0
SHARED_LIBS +=		audtag		3.0	# 3.0

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# BSD
PERMIT_PACKAGE_CDROM =Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z

MASTER_SITES =		http://distfiles.audacious-media-player.org/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

COMPILER =		base-clang ports-gcc

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

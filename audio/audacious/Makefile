# $OpenBSD: Makefile,v 1.51 2015/03/27 08:43:01 ajacoutot Exp $

SHARED_ONLY =		Yes
BROKEN-hppa =	no atomic ops / __sync_fetch_and_add_4
BROKEN-hppa =	tinylock.c:58: internal compiler error: in extract_insn, at recog.c:2077

COMMENT =		Gtk+3 media player

DISTNAME =		audacious-3.5.2
REVISION =		0

SHARED_LIBS +=		audcore		3.0 	# 1.0
SHARED_LIBS +=		audgui		3.0	# 1.0
SHARED_LIBS +=		audtag		2.1	# 1.0

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# BSD
PERMIT_PACKAGE_CDROM =Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 guess m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

MASTER_SITES =		http://distfiles.audacious-media-player.org/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/libguess>=1.2 \
			x11/gtk+3

MAKE_ENV =		LIBaudcore_VERSION=${LIBaudcore_VERSION} \
			LIBaudgui_VERSION=${LIBaudgui_VERSION} \
			LIBaudtag_VERSION=${LIBaudtag_VERSION}

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

NO_TEST =	Yes

.include <bsd.port.mk>

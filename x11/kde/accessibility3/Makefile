# $OpenBSD: Makefile,v 1.68 2019/07/05 11:53:00 sthen Exp $

COMMENT = 		X11 toolkit, accessibility aids
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
REVISION =		27
DISTNAME =		kdeaccessibility-${VERSION}
MODKDE_VERSION ?=	3.5.8
SHARED_LIBS +=	KTTSD_Lib            1.0      # .0.1
SHARED_LIBS +=	kttsd                2.0      # .1.0

MODULES =	x11/kde

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	x11/kde/libs3 

SEPARATE_BUILD =	flavored

WANTLIB =	GL FLAC ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB +=	Xinerama Xmu Xrandr Xrender Xt Xtst Xxf86vm art_lgpl_2
WANTLIB +=	artsflow artsflow_idl audiofile c drm expat fam fontconfig
WANTLIB +=	freetype glib-2.0 gmodule-2.0 gthread-2.0 iconv idn intl jpeg
WANTLIB +=	kmedia2_idl lcms lib/kde3/DCOP lib/kde3/artskde
WANTLIB +=	lib/kde3/kabc lib/kde3/kdecore>=6 lib/kde3/kdefx
WANTLIB +=	lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui lib/kde3/kio
WANTLIB +=	lib/kde3/kparts lib/kde3/kresources lib/kde3/kspell
WANTLIB +=	lib/kde3/ktexteditor lib/kde3/kutils lib/kde3/kwalletclient
WANTLIB +=	lib/kde3/vcard m mad mcop mng ogg png pthread
WANTLIB +=	qtmcop sndio soundserver_idl ${COMPILER_LIBCXX} util
WANTLIB +=	vorbis vorbisenc vorbisfile xcb z
WANTLIB += 	X11-xcb glapi xcb-dri2 xcb-glx
WANTLIB += crypto ssl xcb-dri3 xcb-present xcb-sync xcb-xfixes
WANTLIB += xshmfence

COMPILER =		base-clang ports-gcc base-gcc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE_HTML_SUBDIR}/en/common
	rm -Rf ${PREFIX}/share/icons/mono

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.70 2013/12/22 19:24:34 zhuk Exp $

COMMENT =		K Desktop Environment, edutainment
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeedu-${VERSION}
MODKDE_VERSION ?=	3.5.8
SHARED_LIBS +=	kdeeducore           4.0      # .3.0
SHARED_LIBS +=	kdeeduui             4.0      # .3.5
SHARED_LIBS +=	kdeeduplot           4.0      # .3.0
SHARED_LIBS +=	extdate              4.0      # .3.0
SHARED_LIBS +=	kiten                2.0      # .1.0
SHARED_LIBS +=	kvoctraincore        1.0      # .0.0

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS = 	x11/kde/libs3
SEPARATE_BUILD =	flavored

# XXX Probably OCaml support could be added?
CONFIGURE_ARGS +=	--disable-kig-python-scripting \
			--disable-ocamlsolver

REVISION =	12
WANTLIB = GL ICE SM X11 Xau Xcursor Xdamage Xdmcp Xext Xfixes Xft Xi Xinerama \
	Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 artsflow artsflow_idl artskde \
	audiofile c drm expat fam fontconfig freetype glib-2.0>=800 \
	gmodule-2.0>=800 gthread-2.0>=800 idn jpeg katepartinterfaces \
	kmedia2_idl knewstuff ktexteditor lcms lib/kde3/DCOP lib/kde3/kabc \
	lib/kde3/kdecore>=6 lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu \
	lib/kde3/kdeui lib/kde3/khtml lib/kde3/kio lib/kde3/kjs \
	lib/kde3/kparts lib/kde3/kresources lib/kde3/kutils \
	lib/kde3/kwalletclient lib/kde3/vcard m mad mcop mng ogg pcre \
	pcreposix png pthread pthread-stubs qtmcop sndio \
	soundserver_idl stdc++ util vorbis vorbisenc vorbisfile xcb z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE_HTML_SUBDIR}/en/common

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.46 2012/06/15 08:30:22 ajacoutot Exp $

COMMENT = 		X11 toolkit, accessibility aids
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeaccessibility-${VERSION}
MODKDE_VERSION ?=	3.5.8
SHARED_LIBS +=	KTTSD_Lib            1.0      # .0.1
SHARED_LIBS +=	kttsd                2.0      # .1.0

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS =	x11/kde/libs3 

FLAVORS =	debug

SEPARATE_BUILD =	flavored

REVISION =	11

WANTLIB = ICE SM X11 Xau Xdmcp Xext Xi Xrender Xtst art_lgpl_2 artsflow \
	artsflow_idl audiofile c fam glib-2.0 gmodule-2.0 gthread-2.0 idn jpeg \
	kmedia2_idl lib/kde3/DCOP lib/kde3/artskde lib/kde3/kabc \
	lib/kde3/kdecore>=6 lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu \
	lib/kde3/kdeui lib/kde3/kio lib/kde3/kparts lib/kde3/kresources \
	lib/kde3/kspell lib/kde3/ktexteditor lib/kde3/kutils \
	lib/kde3/kwalletclient lib/kde3/vcard m mad mcop ogg pcre png pthread \
	pthread-stubs qtmcop sndio soundserver_idl stdc++ util vorbis \
	vorbisenc vorbisfile xcb z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/HTML/en/common
	@${post_install_libs}

.include <bsd.port.mk>

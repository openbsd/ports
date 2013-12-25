# $OpenBSD: Makefile,v 1.71 2013/12/25 16:32:22 zhuk Exp $

COMMENT =		K Desktop Environment, edutainment
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeedu-${VERSION}
MODKDE_VERSION =	3.5.8
REVISION =		13

SHARED_LIBS +=	kdeeducore           4.0      # .3.0
SHARED_LIBS +=	kdeeduui             4.0      # .3.5
SHARED_LIBS +=	kdeeduplot           4.0      # .3.0
SHARED_LIBS +=	extdate              4.0      # .3.0
SHARED_LIBS +=	kiten                2.0      # .1.0
SHARED_LIBS +=	kvoctraincore        1.0      # .0.0

WANTLIB =  c expat m pthread pthread-stubs sndio stdc++ util z
WANTLIB += ICE SM X11 Xext Xfixes Xrender Xt fontconfig freetype xcb
WANTLIB += ${KDE}/DCOP ${KDE}/artsflow ${KDE}/artsflow_idl
WANTLIB += ${KDE}/artskde ${KDE}/kabc ${KDE}/katepartinterfaces
WANTLIB += ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdeprint ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/khtml ${KDE}/kio ${KDE}/kjs
WANTLIB += ${KDE}/kmedia2_idl ${KDE}/knewstuff ${KDE}/kparts
WANTLIB += ${KDE}/kresources ${KDE}/ktexteditor
WANTLIB += ${KDE}/kutils ${KDE}/kwalletclient ${KDE}/mcop
WANTLIB += ${KDE}/qtmcop ${KDE}/soundserver_idl ${KDE}/vcard
WANTLIB += FLAC art_lgpl_2 audiofile fam glib-2.0 gmodule-2.0
WANTLIB += gthread-2.0 idn jpeg mad ogg pcre pcreposix png vorbis
WANTLIB += vorbisenc vorbisfile

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS = 	x11/kde/libs3
SEPARATE_BUILD =	flavored

# XXX Probably OCaml support could be added?
CONFIGURE_ARGS +=	--disable-kig-python-scripting \
			--disable-ocamlsolver

# picks up KDE4 libraries otherwise
USE_LIBTOOL =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODKDE_HTML_SUBDIR}/en/common

.include <bsd.port.mk>

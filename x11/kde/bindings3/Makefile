# $OpenBSD: Makefile,v 1.66 2010/08/30 21:49:54 sthen Exp $

COMMENT = 		K Desktop Environment, extra language support
CATEGORIES =		x11 x11/kde devel
VERSION =		3.5.10
DISTNAME =		kdebindings-${VERSION}
MODKDE_VERSION =	3.5.8
SHARED_LIBS +=	kjsembed             2.0      # .1.0
SHARED_LIBS +=	smokeqt              4.0      # .3.2
SHARED_LIBS +=	smokekde             4.0      # .3.2

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS =	::x11/kde/libs3 \
		::x11/qt3 \
		::lang/ruby

REVISION =	10
WANTLIB = GL GLU ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c expat fam \
	fontconfig freetype idn jpeg lib/kde3/DCOP lib/kde3/kdecore.>=6 \
	lib/kde3/kdefx lib/kde3/kdeprint lib/kde3/kdesu lib/kde3/kdeui \
	lib/kde3/khtml lib/kde3/kio lib/kde3/kjs lib/kde3/kmdi \
	lib/kde3/knewstuff lib/kde3/kparts lib/kde3/kscript lib/kde3/kspell \
	lib/kde3/kutils lib/kde3/kwalletclient m pcre pcreposix png pthread \
	pthread-stubs qui-mt ruby stdc++ util xcb z

PYTHON_VER =		2.5
BUILD_DEPENDS =		:python->=${PYTHON_VER},<2.6:lang/python/${PYTHON_VER}
#			::devel/tmake

MAKE_FLAGS +=		TMAKEPATH=${LOCALBASE}/share/tmake/openbsd-g++/ \
			PYTHON=${LOCALBASE}/bin/python${PYTHON_VER}
SEPARATE_BUILD =	flavored

CONFIGURE_ENV +=	DO_NOT_COMPILE=python

GNU_ARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS =		GNU_ARCH OSREV

.include <bsd.port.mk>

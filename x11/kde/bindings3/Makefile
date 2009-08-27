# $OpenBSD: Makefile,v 1.57 2009/08/27 19:44:38 ajacoutot Exp $

.if ${MACHINE_ARCH} == "powerpc"
BROKEN =			gcc spins on x_20.cpp
.endif

COMMENT = 		K Desktop Environment, extra language support
CATEGORIES =		x11 x11/kde devel
VERSION =		3.5.10
DISTNAME =		kdebindings-${VERSION}
PKGNAME =		${DISTNAME}p4
MODKDE_VERSION =	3.5.8
SHARED_LIBS +=	kjsembed             2.0      # .1.0
SHARED_LIBS +=	smokeqt              4.0      # .3.2
SHARED_LIBS +=	smokekde             4.0      # .3.2

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS =	DCOP,kdecore.>=6,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmdi,knewstuff,kparts,kscript,kspell,kutils,kwalletclient::x11/kde/libs3 \
		qui-mt::x11/qt3 \
		ruby::lang/ruby

WANTLIB =	GLU Xext stdc++ X11 util m ICE Xrender SM pthread \
		c fontconfig z GL pthread-stubs xcb \
		png pcre jpeg art_lgpl_2 pcreposix idn \
		Xau Xdmcp expat fam freetype rpcsvc

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

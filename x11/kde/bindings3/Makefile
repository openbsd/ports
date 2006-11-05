# $OpenBSD: Makefile,v 1.38 2006/11/05 13:02:30 espie Exp $

.if ${MACHINE_ARCH} == "powerpc"
BROKEN=			"gcc spins on x_20.cpp"
.endif

COMMENT= 		"K Desktop Environment, extra language support"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.5.5
DISTNAME=		kdebindings-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5.3
SHARED_LIBS +=	kjsembed             2.0      # .1.0
SHARED_LIBS +=	smokeqt              4.0      # .3.2
SHARED_LIBS +=	smokekde             4.0      # .3.2
# XXX
#SHARED_LIBS +=	qtruby                        # .0.0
#SHARED_LIBS +=	qui                           # .0.0
#SHARED_LIBS +=	korundum                      # .0.0

LIB_DEPENDS=DCOP,kdecore.>=6,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmdi,knewstuff,kparts,kscript,kspell,kutils,kwalletclient::x11/kde/libs3 \
	qui-mt::x11/qt3,mt \
	ruby::lang/ruby

WANTLIB=	GLU Xext stdc++ X11 util m ICE Xrender SM pthread \
		c fontconfig z GL \
		png pcre jpeg art_lgpl_2 pcreposix iconv idn
PYTHON_VER=	2.4
BUILD_DEPENDS=	::lang/python/${PYTHON_VER}
#		::devel/tmake

MAKE_FLAGS+=	TMAKEPATH=${LOCALBASE}/share/tmake/openbsd-g++/ \
		PYTHON=${LOCALBASE}/bin/python${PYTHON_VER}
SEPARATE_BUILD=flavored

CONFIGURE_ENV+=DO_NOT_COMPILE=python

GNU_ARCH=${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS=GNU_ARCH OSREV
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

.include <bsd.port.mk>

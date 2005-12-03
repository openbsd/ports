# $OpenBSD: Makefile,v 1.26 2005/12/03 12:36:40 espie Exp $

.if ${MACHINE_ARCH} == "powerpc"
BROKEN=			"gcc spins on x_20.cpp"
.endif

COMMENT= 		"K Desktop Environment, extra language support"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.5.0
DISTNAME=		kdebindings-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5

LIB_DEPENDS=DCOP,kdecore.6,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmdi,knewstuff,kparts,kscript,kspell,kutils,kwalletclient::x11/kde/libs3 \
	qui-mt::x11/qt3,mt \
	ruby::lang/ruby

WANTLIB=	GLU Xext stdc++ X11 util m ICE Xrender SM pthread \
		c fontconfig z GL \
		png pcre jpeg art_lgpl_2.0.0 pcreposix
BUILD_DEPENDS=::lang/python/2.4
#		::devel/tmake

MAKE_FLAGS+=TMAKEPATH=${LOCALBASE}/share/tmake/openbsd-g++/
SEPARATE_BUILD=flavored

CONFIGURE_ENV+=DO_NOT_COMPILE=python

GNU_ARCH=${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS=GNU_ARCH OSREV

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.19 2004/12/18 00:17:09 pvalchev Exp $

.if ${MACHINE_ARCH} == "powerpc"
BROKEN=			"gcc spins on x_20.cpp"
.endif

COMMENT= 		"K Desktop Environment, extra language support"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.3.2
DISTNAME=		kdebindings-${VERSION}
MODKDE_VERSION=		3.3.0

LIB_DEPENDS=DCOP,kdecore.6,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kmdi,kparts,kscript,kspell,kutils,kwalletclient::x11/kde/libs3 \
	qui-mt::x11/qt3,mt \
	ruby::lang/ruby

#BUILD_DEPENDS=::lang/python/2.3 \
#		::devel/tmake

MAKE_FLAGS+=TMAKEPATH=${LOCALBASE}/share/tmake/openbsd-g++/
SEPARATE_BUILD=flavored

CONFIGURE_ENV+=DO_NOT_COMPILE=python
.include <bsd.port.mk>

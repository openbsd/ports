# $OpenBSD: Makefile,v 1.28 2006/08/03 10:53:36 espie Exp $

COMMENT= 		"K Desktop Environment, developer extensions"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.5.4
DISTNAME=		kdesdk-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5.3
SHARED_LIBS=	cvsservice		1.0 \
		kbabelcommon		6.0 \
		kbabeldictplugin	4.0 \
		kompareinterface	1.0 \
		kspy			4.0 \
		kunittestgui		1.0 

LIB_DEPENDS=	kdecore.>=6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard,kunittest::x11/kde/libs3 \
		kcal::x11/kde/pim3

FLAVORS=	debug
SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg ktnef m pcre \
		pcreposix png pthread qui-mt stdc++ util z iconv idn

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
post-install:
	cd ${PREFIX}/bin && mv cvscheck kcvscheck

.include <bsd.port.mk>

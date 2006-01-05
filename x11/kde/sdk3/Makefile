# $OpenBSD: Makefile,v 1.22 2006/01/05 23:01:01 espie Exp $

COMMENT= 		"K Desktop Environment, developer extensions"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.5.0
DISTNAME=		kdesdk-${VERSION}
PKGNAME=		${DISTNAME}p0
MODKDE_VERSION=		3.5
SHARED_LIBS=	cvsservice		0.1 \
		kbabelcommon		5.0 \
		kbabeldictplugin	3.0 \
		kompareinterface	0.0 \
		kspy			3.0 \
		kunittestgui		0.0 

LIB_DEPENDS=	kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard,kunittest::x11/kde/libs3 \
		kcal::x11/kde/pim3

SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg ktnef m pcre \
		pcreposix png pthread qui-mt stdc++ util z

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
post-install:
	cd ${PREFIX}/bin && mv cvscheck kcvscheck

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.16 2004/12/16 07:25:26 alek Exp $

COMMENT= 		"K Desktop Environment, developer extensions"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.3.2
DISTNAME=		kdesdk-${VERSION}
MODKDE_VERSION=		3.3.0
LIB_DEPENDS=	kdecore.6,DCOP,kabc,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
		kcal::x11/kde/pim3

SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg ktnef m pcre \
		pcreposix png pthread qui-mt stdc++ util z

post-install:
	cd ${PREFIX}/bin && mv cvscheck kcvscheck

.include <bsd.port.mk>

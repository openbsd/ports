# $OpenBSD: Makefile,v 1.32 2005/06/02 14:01:26 espie Exp $

COMMENT=		"K Desktop Environment, edutainment"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.1
DISTNAME=		kdeedu-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION?=	3.4
FLAVORS=debug

LIB_DEPENDS= kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kutils,kjs,kwalletclient,vcard,kabc,kresources::x11/kde/libs3
SEPARATE_BUILD=flavored

CONFIGURE_ARGS+=--disable-kig-python-scripting

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg katepartinterfaces \
		knewstuff ktexteditor m pcre pcreposix png pthread stdc++ util z

.include <bsd.port.mk>

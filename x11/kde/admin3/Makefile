# $OpenBSD: Makefile,v 1.28 2008/03/26 10:04:21 espie Exp $

COMMENT= 		K Desktop Environment, admin tools
CATEGORIES=		x11 x11/kde
VERSION=		3.5.9
DISTNAME=		kdeadmin-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION?=	3.5.8

RUN_DEPENDS+=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	DCOP,kdecore.>=6,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kntlm::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg kabc kresources \
		kwalletclient m png pthread stdc++ util vcard z iconv idn \
		Xau Xdmcp fam rpcsvc intl

.include <bsd.port.mk>

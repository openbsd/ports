# $OpenBSD: Makefile,v 1.27 2007/12/15 23:47:40 ajacoutot Exp $

COMMENT= 		K Desktop Environment, admin tools
CATEGORIES=		x11 x11/kde
VERSION=		3.5.8
DISTNAME=		kdeadmin-${VERSION}
PKGNAME=		${DISTNAME}p0
MODKDE_VERSION?=	3.5.8

RUN_DEPENDS+=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	DCOP,kdecore.>=6,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kntlm::x11/kde/libs3
FLAVORS=		debug

SEPARATE_BUILD=	flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg kabc kresources \
		kwalletclient m png pthread stdc++ util vcard z iconv idn \
		Xau Xdmcp fam rpcsvc intl

.include <bsd.port.mk>

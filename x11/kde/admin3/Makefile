# $OpenBSD: Makefile,v 1.31 2009/08/27 19:44:38 ajacoutot Exp $

COMMENT = 		K Desktop Environment, admin tools
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdeadmin-${VERSION}
PKGNAME =		${DISTNAME}p1
MODKDE_VERSION ?=	3.5.8

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS =	DCOP,kdecore.>=6,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kntlm::x11/kde/libs3
FLAVORS =	debug

SEPARATE_BUILD =	flavored

WANTLIB =	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg kabc kresources \
		kwalletclient m png pthread stdc++ util vcard z idn \
		Xau Xdmcp fam rpcsvc pthread-stubs xcb

.include <bsd.port.mk>

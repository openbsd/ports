# $OpenBSD: Makefile,v 1.30 2005/02/27 09:09:13 brad Exp $

COMMENT=		"K Desktop Environment, edutainment"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.2
DISTNAME=		kdeedu-${VERSION}
PKGNAME=		${DISTNAME}p1
MODKDE_VERSION?=	3.3.0
FLAVORS=debug

LIB_DEPENDS= kdecore.6,DCOP,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kutils,kjs,kwalletclient::x11/kde/libs3
SEPARATE_BUILD=flavored

CONFIGURE_ARGS+=--disable-kig-python-scripting

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c jpeg katepartinterfaces \
		knewstuff ktexteditor m pcre pcreposix png pthread stdc++ util z

.include <bsd.port.mk>

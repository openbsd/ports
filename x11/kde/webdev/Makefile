# $OpenBSD: Makefile,v 1.12 2006/01/06 08:56:48 espie Exp $

COMMENT= 		"web development tool"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.0
DISTNAME=		kdewebdev-${VERSION}
PKGNAME=		${DISTNAME}p0
MODKDE_VERSION=		3.5
SHARED_LIBS=		kommanderplugin		0.0 \
			kommanderwidget		0.0 \
			kommanderwidgets	0.0

LIB_DEPENDS= kdecore.6,DCOP,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
    exslt::textproc/libxslt \
    cvsservice::x11/kde/sdk3

SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c gcrypt gpg-error iconv \
		intl jpeg kmdi knewstuff m pcre pcreposix png pthread stdc++ \
		util xml2 xslt z

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>

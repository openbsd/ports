# $OpenBSD: Makefile,v 1.6 2005/06/02 14:01:27 espie Exp $

COMMENT= 		"web development tool"
CATEGORIES=		x11 x11/kde
VERSION=		3.4.1
DISTNAME=		kdewebdev-${VERSION}
MODKDE_VERSION=		3.4
LIB_DEPENDS= kdecore.6,DCOP,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
    exslt::textproc/libxslt \
    cvsservice::x11/kde/sdk3

SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c gcrypt gpg-error iconv \
		intl jpeg kmdi knewstuff m pcre pcreposix png pthread stdc++ \
		util xml2 xslt z

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.23 2007/05/25 09:49:56 espie Exp $

COMMENT= 		"web development tool"
CATEGORIES=		x11 x11/kde
VERSION=		3.5.7
DISTNAME=		kdewebdev-${VERSION}
PKGNAME=		${DISTNAME}
MODKDE_VERSION=		3.5.7
SHARED_LIBS +=	kommanderplugin      1.0      # .0.0
SHARED_LIBS +=	kommanderwidget      1.0      # .0.0
SHARED_LIBS +=	kommanderwidgets     1.0      # .0.0

LIB_DEPENDS= kdecore.>=6,DCOP,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
    exslt::textproc/libxslt \
    cvsservice::x11/kde/sdk3

SEPARATE_BUILD=flavored

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c gcrypt gpg-error iconv \
		intl jpeg kmdi knewstuff m pcre pcreposix png pthread stdc++ \
		util xml2 xslt z idn Xau Xdmcp fam rpcsvc


.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.30 2009/08/27 19:44:39 ajacoutot Exp $

COMMENT = 		web development tool
CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
DISTNAME =		kdewebdev-${VERSION}
PKGNAME =		${DISTNAME}p1
MODKDE_VERSION =	3.5.8
SHARED_LIBS +=	kommanderplugin      1.0      # .0.0
SHARED_LIBS +=	kommanderwidget      1.0      # .0.0
SHARED_LIBS +=	kommanderwidgets     1.0      # .0.0

MODULES =	x11/kde devel/gettext

RUN_DEPENDS +=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS = 	kdecore.>=6,DCOP,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
    		exslt::textproc/libxslt \
    		cvsservice::x11/kde/sdk3

SEPARATE_BUILD = 	flavored

WANTLIB =	ICE SM X11 Xext Xrender art_lgpl_2 c gcrypt gpg-error \
		jpeg kmdi knewstuff m pcre pcreposix png pthread stdc++ \
		util xml2 xslt z idn Xau Xdmcp fam rpcsvc pthread-stubs xcb


.include <bsd.port.mk>

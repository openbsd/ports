# $OpenBSD: Makefile,v 1.3 2004/12/12 11:33:25 espie Exp $

COMMENT= 		"web development tool"
CATEGORIES=		x11 x11/kde
VERSION=		3.3.2
DISTNAME=		kdewebdev-${VERSION}
MODKDE_VERSION=		3.3.0
LIB_DEPENDS= kdecore.6,DCOP,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
    exslt::textproc/libxslt

SEPARATE_BUILD=flavored

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.9 2004/03/07 21:08:45 espie Exp $

COMMENT= 		"web development tool"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.1
DISTNAME=		quanta-${VERSION}
MODKDE_VERSION=		3.2
LIB_DEPENDS= kdecore.6,DCOP,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
    exslt::textproc/libxslt

SEPARATE_BUILD=flavored

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.8 2004/02/07 01:46:24 espie Exp $

COMMENT= 		"web development tool"
CATEGORIES=		x11 x11/kde
VERSION=		3.2.0
DISTNAME=		quanta-${VERSION}
MODKDE_VERSION=		3.2
LIB_DEPENDS= kdecore.6,DCOP,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,kresources,kspell,ktexteditor,kutils,kwalletclient,vcard::x11/kde/libs3 \
    exslt::textproc/libxslt

SEPARATE_BUILD=flavored

post-patch:
	ln -s /usr/bin/false ${WRKDIR}/bin/automake-1.7

.include <bsd.port.mk>

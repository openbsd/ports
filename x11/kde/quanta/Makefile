# $OpenBSD: Makefile,v 1.6 2004/02/01 14:59:24 espie Exp $

COMMENT= 		"web development tool"
CATEGORIES=		x11 x11/kde
VERSION=		3.1.95
DISTNAME=		quanta-${VERSION}
MODKDE_VERSION=		3.2
LIB_DEPENDS= kdecore.4,DCOP,kabc,katepartinterfaces,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kspell,ktexteditor,kutils,vcard::x11/kde/libs3 \
art_lgpl_2::graphics/libart
#SEPARATE_BUILD=simple

post-patch:
	ln -s /usr/bin/false ${WRKDIR}/bin/automake-1.7

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2003/01/27 20:27:13 espie Exp $

COMMENT= 		"UML modeller for kde"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.1
DISTNAME=		umbrello-1.1.1

HOMEPAGE=	http://uml.sourceforge.net/

MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=uml/}

LIB_DEPENDS= kdecore.4,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3 \
	art_lgpl_2::graphics/libart

SEPARATE_BUILD=flavored
.include <bsd.port.mk>

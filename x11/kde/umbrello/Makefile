# $OpenBSD: Makefile,v 1.2 2003/06/12 19:16:17 espie Exp $

COMMENT= 		"UML modeller for kde"
CATEGORIES=		x11 x11/kde devel
VERSION=		3.1.1
DISTNAME=		umbrello-1.1.1

HOMEPAGE=	http://uml.sourceforge.net/

MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=uml/}

LIB_DEPENDS= kdecore.4,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3 \
	art_lgpl_2::graphics/libart

AUTOCONF_VERSION=2.52
SEPARATE_BUILD=flavored
.include <bsd.port.mk>

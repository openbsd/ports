# $OpenBSD: Makefile,v 1.25 2004/07/24 12:47:14 espie Exp $

COMMENT=		"K Desktop Environment, games"

CATEGORIES=		x11 x11/kde games
VERSION=		3.2.3
DISTNAME=		kdegames-${VERSION}
MODKDE_VERSION=		3.2.3

LIB_DEPENDS= kdecore.6,artskde,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts::x11/kde/libs3
SEPARATE_BUILD=flavored

MAKE_FLAGS=TOPSUBDIRS='libkdegames ksokoban'
.include <bsd.port.mk>

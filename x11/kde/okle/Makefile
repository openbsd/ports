# $OpenBSD: Makefile,v 1.3 2003/02/24 22:59:20 espie Exp $

COMMENT= 		"kde front end for ogle"
CATEGORIES=		x11 x11/kde 
VERSION=		3.0
DISTNAME=		okle-0.2.3
HOMEPAGE=		http://okle.sourceforge.net/
MASTER_SITES=		http://okle.sourceforge.net/src/
EXTRACT_SUFX=		.tar.gz
LIB_DEPENDS= kdecore.4,DCOP,kdefx,kdesu,kdeui,kio::x11/kde/libs3 \
	dvdcontrol,msgevents::x11/ogle

CONFIGURE_ARGS+=--with-ogle-libs='${LOCALBASE}/lib/ogle -L${LOCALBASE}/lib'
CONFIGURE_ARGS+=--with-ogle-includes=${LOCALBASE}/include

.include <bsd.port.mk>

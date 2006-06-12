# $OpenBSD: Makefile,v 1.6 2006/06/12 15:45:51 espie Exp $

COMMENT= 		"kde front end for ogle"
CATEGORIES=		x11 x11/kde 
VERSION=		3.0
DISTNAME=		okle-0.3
PKGNAME=		${DISTNAME}p0
HOMEPAGE=		http://okle.sourceforge.net/
MASTER_SITES=		http://okle.sourceforge.net/src/
EXTRACT_SUFX=		.tar.gz
LIB_DEPENDS= kdecore.4,DCOP,kdefx,kdesu,kdeui,kio::x11/kde/libs3 \
	dvdcontrol,msgevents::x11/ogle

CONFIGURE_ARGS+=--with-ogle-libs='${LOCALBASE}/lib/ogle -L${LOCALBASE}/lib'
CONFIGURE_ARGS+=--with-ogle-includes=${LOCALBASE}/include

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c iconv jpeg kwalletclient \
		m png pthread stdc++ util xml2 z idn

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.24 2012/06/15 08:30:23 ajacoutot Exp $

COMMENT= 		kde front end for ogle
CATEGORIES=		x11 x11/kde 
VERSION=		3.0
DISTNAME=		okle-0.3
HOMEPAGE=		http://okle.sourceforge.net/
MASTER_SITES=		http://okle.sourceforge.net/src/
EXTRACT_SUFX=		.tar.gz
LIB_DEPENDS=	x11/kde/libs3 \
		x11/ogle

RUN_DEPENDS=	x11/gtk+2,-guic

CONFIGURE_ARGS+=--with-ogle-libs='${LOCALBASE}/lib/ogle -L${LOCALBASE}/lib'
CONFIGURE_ARGS+=--with-ogle-includes=${LOCALBASE}/include

MODULES=	x11/kde devel/gettext

REVISION = 8
WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c dvdcontrol fam idn \
	jpeg lib/kde3/DCOP lib/kde3/kdecore>=4 lib/kde3/kdefx lib/kde3/kdesu \
	lib/kde3/kdeui lib/kde3/kio lib/kde3/kwalletclient m msgevents png \
	pthread pthread-stubs qt-mt stdc++ util xcb xml2 z

.include <bsd.port.mk>

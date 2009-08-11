# $OpenBSD: Makefile,v 1.14 2009/08/11 08:40:40 ajacoutot Exp $

COMMENT= 		kde front end for ogle
CATEGORIES=		x11 x11/kde 
VERSION=		3.0
DISTNAME=		okle-0.3
PKGNAME=		${DISTNAME}p3
HOMEPAGE=		http://okle.sourceforge.net/
MASTER_SITES=		http://okle.sourceforge.net/src/
EXTRACT_SUFX=		.tar.gz
LIB_DEPENDS=	kdecore.>=4,DCOP,kdefx,kdesu,kdeui,kio,kwalletclient::x11/kde/libs3 \
		dvdcontrol,msgevents::x11/ogle

CONFIGURE_ARGS+=--with-ogle-libs='${LOCALBASE}/lib/ogle -L${LOCALBASE}/lib'
CONFIGURE_ARGS+=--with-ogle-includes=${LOCALBASE}/include

USE_X11=	Yes
USE_LIBTOOL=	Yes

MODULES=	x11/kde devel/gettext

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam
WANTLIB += idn jpeg m png pthread qt-mt rpcsvc stdc++ util xml2
WANTLIB += z pthread-stubs xcb

.include <bsd.port.mk>

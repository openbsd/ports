# $OpenBSD: Makefile,v 1.27 2013/10/22 11:34:09 zhuk Exp $

COMMENT= 		kde front end for ogle
CATEGORIES=		x11 x11/kde 
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
MODKDE_FIXUP_DATADIR =	Yes

REVISION =	11
WANTLIB +=	ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c
WANTLIB +=	dvdcontrol expat fam fontconfig freetype idn lib/kde3/DCOP
WANTLIB +=	lib/kde3/kdecore>=4 lib/kde3/kdefx lib/kde3/kdesu
WANTLIB +=	lib/kde3/kdeui lib/kde3/kio lib/kde3/kwalletclient m
WANTLIB +=	msgevents png pthread pthread-stubs qt-mt stdc++ util xcb
WANTLIB +=	xml2 z

.include <bsd.port.mk>

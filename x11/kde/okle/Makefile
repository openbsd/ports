# $OpenBSD: Makefile,v 1.29 2015/05/05 17:00:20 sthen Exp $

COMMENT= 		kde front end for ogle
CATEGORIES=		x11 x11/kde 
DISTNAME=		okle-0.3
HOMEPAGE=		http://okle.sourceforge.net/
MASTER_SITES=		http://okle.sourceforge.net/src/
EXTRACT_SUFX=		.tar.gz
LIB_DEPENDS=	x11/kde/libs3 \
		x11/ogle

RUN_DEPENDS=	x11/gtk+3,-guic

CONFIGURE_ARGS+=--with-ogle-libs='${LOCALBASE}/lib/ogle -L${LOCALBASE}/lib'
CONFIGURE_ARGS+=--with-ogle-includes=${LOCALBASE}/include

MODULES=	x11/kde devel/gettext
MODKDE_FIXUP_DATADIR =	Yes

REVISION =	13

WANTLIB += ${MODQT3_WANTLIB}
WANTLIB += ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c dvdcontrol
WANTLIB += expat fam fontconfig freetype idn lib/kde3/DCOP
WANTLIB += lib/kde3/kdecore>=4 lib/kde3/kdefx lib/kde3/kdesu
WANTLIB += lib/kde3/kdeui lib/kde3/kio lib/kde3/kwalletclient m
WANTLIB += msgevents png pthread pthread-stubs stdc++ util xcb xcb-glx
WANTLIB += xml2 z

.include <bsd.port.mk>

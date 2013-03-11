# $OpenBSD: Makefile,v 1.31 2013/03/11 10:50:09 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	graphical debugger for KDE

DISTNAME=	kdbg-1.2.5
REVISION =	4
CATEGORIES=	devel
HOMEPAGE=	http://members.nextra.at/johsixt/kdbg.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	art_lgpl_2 jpeg ICE SM X11 Xext Xrender c m \
		fam rpcsvc png pthread stdc++ util z idn Xau Xdmcp \
		pthread-stubs xcb kdecore>=4 DCOP kdefx kdesu kdeui \
		kio kwalletclient

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kdbg/}

MODULES=	x11/kde devel/gettext

LIB_DEPENDS=	x11/kde/libs3

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf autoheader
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-kde-version=3
CONFIGURE_ENV=	KDEDIR=${LOCALBASE}

.include <bsd.port.mk>

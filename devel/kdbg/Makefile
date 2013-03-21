# $OpenBSD: Makefile,v 1.33 2013/03/21 08:45:15 ajacoutot Exp $

SHARED_ONLY=	Yes
COMMENT=	graphical debugger for KDE

DISTNAME=	kdbg-1.2.5
REVISION =	5
CATEGORIES=	devel
HOMEPAGE=	http://members.nextra.at/johsixt/kdbg.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =	DCOP ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c expat
WANTLIB +=	fam fontconfig freetype idn kdecore>=4 kdefx kdesu kdeui
WANTLIB +=	kio kwalletclient m png pthread pthread-stubs stdc++ util
WANTLIB +=	xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kdbg/}

MODULES=	x11/kde devel/gettext

LIB_DEPENDS=	x11/kde/libs3

CONFIGURE_STYLE= autoconf autoheader
CONFIGURE_ARGS+= ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-kde-version=3
CONFIGURE_ENV=	KDEDIR=${LOCALBASE}

.include <bsd.port.mk>

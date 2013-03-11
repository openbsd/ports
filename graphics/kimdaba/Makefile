# $OpenBSD: Makefile,v 1.24 2013/03/11 11:10:53 espie Exp $

COMMENT=		kde image database
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		kphotoalbum-3.0
REVISION =		8
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://www.kphotoalbum.org/
MASTER_SITES=		${HOMEPAGE}data/download/

WANTLIB=	ICE SM X11 Xext Xrender art_lgpl_2 c expat idn \
		jpeg m png pthread stdc++ util xcb z \
		kdecore>=6 DCOP kdefx kdesu kdeui kio kmediaplayer kparts \
		kwalletclient kipi exiv2 Xfixes Xt fontconfig freetype

LIB_DEPENDS=	x11/kde/libs3 \
		graphics/libkipi \
		graphics/exiv2

RUN_DEPENDS=	databases/qt3-sqlite3-plugin \
		devel/desktop-file-utils

SHARED_ONLY=Yes
MODKDE_VERSION=	3.5.3
MODULES=	x11/kde devel/gettext
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS} --disable-final
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}

# GPL
PERMIT_PACKAGE_CDROM=		Yes

.include <bsd.port.mk>

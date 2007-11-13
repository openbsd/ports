# $OpenBSD: Makefile,v 1.13 2007/11/13 17:10:25 steven Exp $

COMMENT=		kde image database
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		kphotoalbum-3.0
PKGNAME=		${DISTNAME}p1
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://ktown.kde.org/kphotoalbum/
MASTER_SITES=		${HOMEPAGE}download/

WANTLIB=	ICE Xrender SM Xau Xdmcp Xext pthread stdc++ c X11 util m z \
		art_lgpl_2 jpeg png idn fam rpcsvc

LIB_DEPENDS=	kdecore.>=6,DCOP,kdefx,kdesu,kdeui,kio,kmediaplayer,kparts,kwalletclient::x11/kde/libs3 \
		kipi::graphics/libkipi \
		exiv2::graphics/exiv2

RUN_DEPENDS=	::databases/qt3-sqlite3-plugin

SHARED_ONLY=Yes
MODKDE_VERSION=	3.5.3
MODULES=	x11/kde devel/gettext
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS} --disable-final
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=		Yes
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes

.include <bsd.port.mk>

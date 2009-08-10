# $OpenBSD: Makefile,v 1.15 2009/08/10 06:31:45 kili Exp $

COMMENT=		kde image database
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		kphotoalbum-3.0
PKGNAME=		${DISTNAME}p3
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://ktown.kde.org/kphotoalbum/
MASTER_SITES=		${HOMEPAGE}download/

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam idn jpeg m \
		png pthread pthread-stubs rpcsvc stdc++ util xcb z

LIB_DEPENDS=	kdecore.>=6,DCOP,kdefx,kdesu,kdeui,kio,kmediaplayer,kparts,kwalletclient::x11/kde/libs3 \
		kipi::graphics/libkipi \
		exiv2::graphics/exiv2

RUN_DEPENDS=	::databases/qt3-sqlite3-plugin \
		:desktop-file-utils-*:devel/desktop-file-utils

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

# $OpenBSD: Makefile,v 1.34 2015/05/05 17:00:17 sthen Exp $

COMMENT=		kde image database
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		kphotoalbum-3.0
REVISION =		16
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://www.kphotoalbum.org/
MASTER_SITES=		${HOMEPAGE}data/download/

LIB_DEPENDS=	x11/kde/libs3 \
		graphics/libkipi \
		graphics/exiv2

RUN_DEPENDS=	databases/qt3-sqlite3-plugin \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

SHARED_ONLY=Yes
MODKDE_VERSION=	3.5.3
MODULES=	x11/kde devel/gettext
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS} --disable-final
USE_GMAKE=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}

# GPL
PERMIT_PACKAGE_CDROM=		Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kipi ${KDE}/kmediaplayer
WANTLIB += ${KDE}/kparts ${KDE}/kwalletclient
WANTLIB += ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c exiv2 expat
WANTLIB += fam fontconfig freetype idn jpeg m png pthread pthread-stubs
WANTLIB += stdc++ util xcb z

.include <bsd.port.mk>

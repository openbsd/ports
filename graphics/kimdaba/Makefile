# $OpenBSD: Makefile,v 1.4 2006/05/08 16:41:41 espie Exp $

COMMENT=		"kde image database"
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		kphotoalbum-2.2
PKGNAME=		${DISTNAME}
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://ktown.kde.org/kphotoalbum/
MASTER_SITES=		${HOMEPAGE}download/

WANTLIB=	ICE Xrender SM Xext pthread stdc++ c X11 util m z \
		art_lgpl_2.0.0 jpeg png

LIB_DEPENDS=	kdecore.6,DCOP,kdefx,kdesu,kdeui,kio,kwalletclient::x11/kde/libs3 \
		kipi::graphics/libkipi

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}
SHARED_ONLY=Yes
MODKDE_VERSION=	
MODULES=	x11/kde
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS} --disable-final
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=		Yes
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes

.include <bsd.port.mk>

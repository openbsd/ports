# $OpenBSD: Makefile,v 1.1.1.1 2005/03/12 22:02:05 espie Exp $

COMMENT=		"kde image database"
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		kimdaba-2.0
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://ktown.kde.org/kimdaba/
MASTER_SITES=		${HOMEPAGE}download/

WANTLIB=	ICE Xrender SM Xext pthread stdc++ c X11 util m z \
		art_lgpl_2.0.0 jpeg png

LIB_DEPENDS=	kdecore.6,DCOP,kdefx,kdesu,kdeui,kio,kwalletclient::x11/kde/libs3

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}
SHARED_ONLY=Yes
MODKDE_VERSION=	3.3.0
MODULES=	x11/kde
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
#CONFIGURE_ARGS+=	--disable-final
#CONFIGURE_ARGS+=	--with-pgsql-includes=${LOCALBASE}/include/postgresql
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}

# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

.include <bsd.port.mk>

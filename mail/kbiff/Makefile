# $OpenBSD: Makefile,v 1.10 2002/04/16 19:53:30 lebel Exp $

COMMENT=		"new mail notification utility"

DISTNAME=		kbiff-3.6.1
CATEGORIES=		mail
NEED_VERSION=		1.522
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.granroth.org/kbiff/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=  	Yes

MASTER_SITES=		http://devel-home.kde.org/~granroth/kbiff/

LIB_DEPENDS=		kdecore.4,kio,kdeui,kdefx,kdesu,DCOP::x11/kde/libs3

PATCH_LIST?=    	${PORTSDIR}/x11/kde/arts3/patches/p-* patch-*

MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS=		CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt3'

USE_X11=		Yes
CONFIGURE_STYLE= 	autoconf
AUTOCONF_NEW=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt3
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt3
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-mt
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		MOC=${LOCALBASE}/bin/moc3  KDEDIR=${LOCALBASE} \
			UIC=${LOCALBASE}/bin/uic3

.include <bsd.port.mk>

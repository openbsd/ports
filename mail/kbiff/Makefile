# $OpenBSD: Makefile,v 1.13 2003/02/16 20:11:50 lebel Exp $

COMMENT=		"new mail notification utility"

DISTNAME=		kbiff-3.6.3
CATEGORIES=		mail
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.granroth.org/kbiff/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=  	Yes

MASTER_SITES=		http://devel-home.kde.org/~granroth/kbiff/

MODKDE_VERSION= 	3.1
MODULES=        	kde

LIB_DEPENDS=		kdecore.4,kio,kdeui,kdefx,kdesu,DCOP::x11/kde/libs3

PATCH_LIST?=    	${PORTSDIR}/x11/kde/arts3/patches/p-* patch-*

MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS=		CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=		Yes
CONFIGURE_STYLE= 	autoconf
AUTOCONF_NEW=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		KDEDIR=${LOCALBASE} MOC=${LOCALBASE}/bin/moc3-mt \
			UIC=${LOCALBASE}/bin/uic3-mt

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.16 2002/03/23 16:29:46 espie Exp $

COMMENT= 		"X11 toolkit, graphics applications"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.461
VERSION=		2.2.2
DISTNAME=		kdegraphics-${VERSION}
DIST_SUBDIR=		kde

HOMEPAGE=		http://www.kde.org
MASTER_SITES=		${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src/
EXTRACT_SUFX=		.tar.bz2

MODULES=	qt2
LIB_DEPENDS= kdecore.3,DCOP,kdeprint,kdesu,kdeui,kfile,kio,kparts,kssl,ksycoca::x11/kde/libs2

BUILD_DEPENDS=	::x11/qt2-designer

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-final
#CONFIGURE_ARGS+=	--with-xdmdir=/var/X11/kdm
#CONFIGURE_ARGS+=	--without-motif
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared
PATCH_LIST=${PORTSDIR}/x11/kde/libs2/patches/p-* patch-*

# Not yet, too much time to compile
#CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}

CONFIGURE_ENV+=		ac_aux_files=''
MAKE_ENV=		${CONFIGURE_ENV}


# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MTREE_FILE=${PORTSDIR}/x11/kde/libs2/files/mtree

.include <bsd.port.mk>

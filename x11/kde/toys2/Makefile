# $OpenBSD: Makefile,v 1.15 2001/10/28 12:30:14 espie Exp $

COMMENT=	"some useless kde applications"

CATEGORIES=		x11 x11/kde games
NEED_VERSION=		1.483
VERSION=		2.2.1
DISTNAME=		kdetoys-${VERSION}
DIST_SUBDIR=		kde

MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src/
EXTRACT_SUFX=		.tar.bz2

MODULES=	qt2
LIB_DEPENDS=	kdecore.3,DCOP,kdesu,kdeui,kio,kscreensaver,kssl,ksycoca::x11/kde/libs2

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-final
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

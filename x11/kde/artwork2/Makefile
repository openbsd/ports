# $OpenBSD: Makefile,v 1.10 2002/04/03 02:25:06 espie Exp $

COMMENT= 		"X11 toolkit, additional artwork"
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		2.2.2
DISTNAME=		kdeartwork-${VERSION}
DIST_SUBDIR=		kde

HOMEPAGE=		http://www.kde.org
MASTER_SITES=		${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src/
EXTRACT_SUFX=		.tar.bz2

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS=${NO_SHARED_ARCHS}

MODULES=qt2

LIB_DEPENDS=	kdecore.3,kdeui::x11/kde/libs2

BUILD_DEPENDS+=	::x11/qt2-designer

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--with-xdmdir=/var/X11/kdm
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-final
#CONFIGURE_ARGS+=	--enable-debug
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
FAKE_FLAGS=TAR=${TAR} DESTDIR=${WRKINST}

# GPL
# Note that lame is not a problem, since kdebase is packaged with a
# stub lame library which does nothing, and can be overriden with a
# live one later.
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apps/kthememgr/Themes

.include <bsd.port.mk>

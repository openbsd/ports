# $OpenBSD: Makefile,v 1.1.1.1 2002/04/05 16:04:24 espie Exp $

COMMENT=		"office applications for kde"
CATEGORIES=		x11 x11/kde productivity
NEED_VERSION=		1.483
VERSION=		1.1.1
DISTNAME=		koffice-${VERSION}
DIST_SUBDIR=		kde

FULLPKGNAME=	koffice-${VERSION}-kde3
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/3.0/src/
DISTFILES=	koffice-${VERSION}-kde3.tar.bz2

NOT_FOR_ARCHS=${NO_SHARED_ARCHS}

#BUILD_DEPENDS=	::x11/qt2-designer
LIB_DEPENDS= kdecore.3,DCOP,kdefx,kdeprint,kdesu,kdeui,kio,kparts,kspell::x11/kde/libs3 python2.2.0.0:python-2.2*:lang/python/2.2

PATCHORIG=.bsdorig
MODULES=	qt3
CONFIGURE_STYLE=	autoconf
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-mt
CONFIGURE_ARGS+=	--disable-threading
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-final
#CONFIGURE_ARGS+=--enable-static --enable-debug --disable-shared
PATCH_LIST=	p-* patch-*

# Not yet, too much time to compile
#CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

USE_GMAKE=		Yes
CONFIGURE_ENV+=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
CONFIGURE_ENV+=		ac_aux_files=''
MAKE_ENV=		${CONFIGURE_ENV}

# Ensure qt will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

.include <bsd.port.mk>

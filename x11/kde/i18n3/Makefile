# $OpenBSD: Makefile,v 1.2 2002/04/04 22:10:28 naddy Exp $

FLAVORS=af ar az bg bs ca cs da de el en_GB eo es et fi fr he hr hu id is \
    it ja ko lt lv mt nb nl nn pl pt pt_BR ro ru sk sl sv ta th tr uk ven \
    vi xh zh_CN zh_TW zu
FLAVOR?=fr

FULLPKGNAME=	kde-i18n-${FLAVOR}-${VERSION}

COMMENT=		${FLAVOR} translations for kde3

CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.504
VERSION=		3.0
DISTNAME=		kde-i18n-${FLAVOR}-${VERSION}
DIST_SUBDIR=		kde
MODULES=qt3

MASTER_SITES=		${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${VERSION}/src
EXTRACT_SUFX=		.tar.bz2

SUPDISTFILES=
.for i in ${FLAVORS}
SUPDISTFILES+= kde-i18n-$i-${VERSION}${EXTRACT_SUFX}
.endfor
WRKDIST=${WRKDIR}/kde-i18n-${FLAVOR}

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS=${NO_SHARED_ARCHS}

BUILD_DEPENDS = ::x11/kde/libs3

MODULES=qt3

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes
CONFIGURE_ARGS=		${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--disable-threading
CONFIGURE_ARGS+=	--disable-mt
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--without-motif

PATCH_LIST=${PORTSDIR}/x11/kde/arts3/patches/p-* patch-*

#CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-debug

USE_GMAKE=		Yes
CONFIGURE_ENV=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}

CONFIGURE_ENV+=		ac_aux_files=''
MAKE_ENV=		${CONFIGURE_ENV}
PORTHOME=${WRKDIR}

# Ensure qt2 will always be at the front
MAKE_FLAGS=CXXLD='--tag CXX ${CXX} -L${MOQT_LIBDIR}'

PLIST=${PKGDIR}/PLIST.${FLAVOR}
# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

# some extra vars to compact PLISTs
DOC=share/doc/HTML/${FLAVOR}/
LOC=share/locale/${FLAVOR}/LC_MESSAGES/
I=index.docbook
C=index.cache.bz2
SUBST_VARS=DOC LOC I C

.include <bsd.port.mk>

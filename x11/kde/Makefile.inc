# $OpenBSD: Makefile.inc,v 1.1 2002/04/10 01:24:38 espie Exp $
NEED_VERSION+=	1.504
DIST_SUBDIR=	kde
HOMEPAGE?=	http://www.kde.org
MASTER_SITES?=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR?=	stable/${VERSION}/src
EXTRACT_SUFX?=	.tar.bz2

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS?=	${NO_SHARED_ARCHS}
.if ${VERSION:M2*}
MODULES?=	qt2
PATCH_LIST?=	${PORTSDIR}/x11/kde/libs2/patches/p-* patch-*
.elif ${VERSION:M3*}
# our linker is insane, at least on some arches
VMEM_WARNING?=Yes
MODULES?=	qt3
PATCH_LIST?=	${PORTSDIR}/x11/kde/arts3/patches/p-* patch-*
.endif

MODGNU_CONFIG_GUESS_DIRS?=	${WRKSRC} ${WRKSRC}/admin

CONFIGURE_STYLE?=	autoconf
AUTOCONF_NEW=		Yes
CONFIGURE_ARGS+=	${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-threading
CONFIGURE_ARGS+=	--disable-mt
CONFIGURE_ARGS+=	--with-xdmdir=/var/X11/kdm
CONFIGURE_ARGS+=	--enable-mitshm
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-final
.if !${CONFIGURE_ARGS:M--with-motif}
CONFIGURE_ARGS+=	--without-motif
.endif
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
USE_GMAKE?=		Yes

PORTHOME?=${WRKDIR}

CONFIGURE_ENV+=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'
FAKE_FLAGS?=	TAR=tar DESTDIR=${WRKINST}
# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

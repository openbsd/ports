# $OpenBSD: Makefile.inc,v 1.13 2002/12/29 19:25:33 espie Exp $
DIST_SUBDIR?=	kde
HOMEPAGE?=	http://www.kde.org
MASTER_SITES?=	${MASTER_SITE_KDE:S@$@stable/${VERSION}/src/@}
EXTRACT_SUFX?=	.tar.bz2

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS?=	${NO_SHARED_ARCHS}
MODULES?=	gcc3 qt3
MODGCC3_ARCHES?=sparc64
MODGCC3_LANGS?=	c++
PATCH_LIST?=	${PORTSDIR}/x11/kde/arts3/patches/p-* patch-*
KDE=lib/kde3

MODGNU_CONFIG_GUESS_DIRS?=	${WRKSRC} ${WRKSRC}/admin

CONFIGURE_STYLE?=	autoconf
AUTOCONF_NEW=		Yes
CONFIGURE_ARGS+=	${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs="${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-extra-includes="${LOCALBASE}/include/libpng:${LOCALBASE}/include"
CONFIGURE_ARGS+=	--disable-threading
CONFIGURE_ARGS+=	--disable-mt
CONFIGURE_ARGS+=	--with-xdmdir=/var/X11/kdm
CONFIGURE_ARGS+=	--enable-mitshm
#CONFIGURE_ARGS+=	--enable-debug
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--enable-final
.if !${CONFIGURE_ARGS:M--with-motif}
CONFIGURE_ARGS+=	--without-motif
.endif
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
USE_GMAKE?=		Yes

PORTHOME?=${WRKDIR}

CONFIGURE_ENV+=		UIC_PATH="${MODQT_UIC}"
CONFIGURE_ENV+=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
MAKE_ENV=		${CONFIGURE_ENV}
MODQT_OVERRIDE_UIC=No

SUBST_VARS+=	KDE
MAKE_FLAGS+=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'
FAKE_FLAGS?=	TAR=tar DESTDIR=${WRKINST}
# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes
#COPTS+=-fno-stack-protector

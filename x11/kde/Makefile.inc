# $OpenBSD: Makefile.inc,v 1.18 2003/01/07 15:36:35 espie Exp $
DIST_SUBDIR?=	kde
HOMEPAGE?=	http://www.kde.org
MASTER_SITES?=	${MASTER_SITE_KDE:S@$@stable/${VERSION}/src/@}
EXTRACT_SUFX?=	.tar.bz2

# Parts of kde want shared libraries to work, as some symbols are
# duplicated over the place.
NOT_FOR_ARCHS?=	${NO_SHARED_ARCHS}
MODULES?=	qt3
PATCH_LIST?=	${PORTSDIR}/x11/kde/arts3/patches/p-* patch-*
KDE=lib/kde3

MODGNU_CONFIG_GUESS_DIRS?=	${WRKSRC} ${WRKSRC}/admin
.if !defined(NO_DEBUG)
FLAVORS+=	debug
.endif
FLAVOR?=

CONFIGURE_STYLE?=	autoconf
AUTOCONF_NEW=		Yes
CONFIGURE_ARGS+=	${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+=	--with-extra-libs="${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-extra-includes="${LOCALBASE}/include/libpng:${LOCALBASE}/include"
CONFIGURE_ARGS+=	--with-xdmdir=/var/X11/kdm
CONFIGURE_ARGS+=	--enable-mitshm
.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=	--enable-debug=yes
.else
CONFIGURE_ARGS+=	--disable-debug
CONFIGURE_ARGS+=	--disable-dependency-tracking
.endif
CONFIGURE_ARGS+=	--enable-final
.if !${CONFIGURE_ARGS:M--with-motif}
CONFIGURE_ARGS+=	--without-motif
.endif
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
USE_GMAKE?=		Yes

PORTHOME?=${WRKDIR}

CONFIGURE_ENV+=		UIC_PATH="${MODQT_UIC}" UIC="${MODQT_UIC}"
CONFIGURE_ENV+=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
MAKE_ENV=		${CONFIGURE_ENV}
MODQT_OVERRIDE_UIC=No
MODQT_MT=Yes

SUBST_VARS+=	KDE
MAKE_FLAGS+=CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'
FAKE_FLAGS?=	TAR=tar DESTDIR=${WRKINST}
# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes
CFLAGS+=-fno-stack-protector
CXXFLAGS+=-fno-stack-protector

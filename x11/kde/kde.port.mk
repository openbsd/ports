# $OpenBSD: kde.port.mk,v 1.11 2004/08/03 11:37:52 espie Exp $

SHARED_ONLY=	Yes

MODULES+=	x11/qt3
MODQT_OVERRIDE_UIC?=No
MODQT_MT?=Yes

MODKDE_NODEBUG?=No

.if !${MODKDE_NODEBUG:L} == "yes"
FLAVORS+=	debug
.endif
FLAVOR?=

MODKDE_CONFIGURE_ARGS=${MODQT_CONFIGURE_ARGS}
MODKDE_CONFIGURE_ARGS+=	--with-extra-libs="${LOCALBASE}/lib"
MODKDE_CONFIGURE_ARGS+=	--with-extra-includes="${LOCALBASE}/include/libpng:${LOCALBASE}/include"
MODKDE_CONFIGURE_ARGS+=	--with-xdmdir=/var/X11/kdm
MODKDE_CONFIGURE_ARGS+=	--enable-mitshm
MODKDE_CONFIGURE_ARGS+=	--with-xinerama
.if ${FLAVOR:L:Mdebug}
MODKDE_CONFIGURE_ARGS+=	--enable-debug=yes
.else
MODKDE_CONFIGURE_ARGS+=	--disable-debug
MODKDE_CONFIGURE_ARGS+=	--disable-dependency-tracking
.endif
MODKDE_CONFIGURE_ARGS+=	--enable-final

MODKDE_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/admin

MODKDE_CONFIGURE_ENV=		UIC_PATH="${MODQT_UIC}" UIC="${MODQT_UIC}"
MODKDE_CONFIGURE_ENV+=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
MODKDE_MAKE_FLAGS=		CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

KDE=lib/kde3
SUBST_VARS+=	KDE

MODKDE_VERSION?=
SUP_PATCH_LIST?=
.if ${MODKDE_VERSION} == "3.1"
PATCH_LIST=	${PORTSDIR}/x11/kde/patches-3.1/patch-* patch-* ${SUP_PATCH_LIST}
.elif ${MODKDE_VERSION} == "3.2"
PATCH_LIST=	${PORTSDIR}/x11/kde/patches-3.2/patch-* patch-* ${SUP_PATCH_LIST}
AUTOCONF?=	/bin/sh ${WRKDIST}/admin/cvs.sh configure
LIB_DEPENDS+=lib/qt3/qt-mt.3.20::x11/qt3,mt
.elif ${MODKDE_VERSION} == "3.2.3"
PATCH_LIST=	${PORTSDIR}/x11/kde/patches-3.2.3/patch-* patch-* ${SUP_PATCH_LIST}
AUTOCONF?=	/bin/sh ${WRKDIST}/admin/cvs.sh configure
LIB_DEPENDS+=lib/qt3/qt-mt.3.20::x11/qt3,mt
.elif ${MODKDE_VERSION} == "2.2.2"
PATCH_LIST=	${PORTSDIR}/x11/kde/patches-2.2.2/patch-* patch-* ${SUP_PATCH_LIST}
.endif

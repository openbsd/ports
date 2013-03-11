# $OpenBSD: Makefile.inc,v 1.14 2013/03/11 11:46:13 espie Exp $

FLAVOR ?=
FLAVORS ?=		debug
SEPARATE_BUILD =	flavored
CATEGORIES ?=		x11 x11/kde
VERSION ?=		4.4.5
DIST_SUBDIR ?=		kde
PKGNAME?=		${DISTNAME}
MODULES +=		x11/qt4
MODQT_MT ?=		Yes
MODQT_OVERRIDE_UIC ?=	No
SHARED_ONLY ?=		Yes
ONLY_FOR_ARCHS ?=	${GCC4_ARCHS}

MODULES +=		devel/cmake
CONFIGURE_STYLE ?=	cmake

EXTRACT_SUFX?=		.tar.bz2
MASTER_SITES?=		${MASTER_SITE_KDE:=stable/${VERSION}/src/}

PORTHOME ?=		${WRKDIR}

# GPL (LGPL for the central libraries)
PERMIT_DISTFILES_FTP ?=		Yes
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
CONFIGURE_ENV +=		QTDIR=${MODQT_LIBDIR} HOME=${WRKDIR}
SEPARATE_BUILD =		simple

#CONFIGURE_ARGS +=	--debug-output --debug-trycompile
.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE:String=Debug
.else
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE:String=Release
.endif


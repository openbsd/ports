# common stuff for all gcc ports
# we assume each one defines a V variable.

CATEGORIES=	lang

PERMIT_PACKAGE=	Yes

COM=		GNU compiler collection
COMMENT=	${COM}: core C compiler
COMMENT-main=	${COMMENT}
COMMENT-libs=	${COM}: support libs
COMMENT-c++ =	${COM}: C++ compiler
COMMENT-estdc=	${COM}: C++ compiler library
COMMENT-f95=	${COM}: Fortran compiler
COMMENT-objc=	${COM}: obj C compiler
COMMENT-ada=	${COM}: Ada compiler
COMMENT-go=	${COM}: Go compiler
COMMENT-dlang=	${COM}: D compiler

PKGNAME?=	gcc-${FULL_PKGVERSION}
PKGNAME-libs?=	gcc-libs-${FULL_PKGVERSION}
PKGNAME-c++ ?=	g++-${FULL_PKGVERSION}
PKGNAME-estdc?=	libstdc++-${FULL_PKGVERSION}
PKGNAME-f95?=	gfortran-${FULL_PKGVERSION}
PKGNAME-objc?=	gobjc-${FULL_PKGVERSION}
PKGNAME-ada?=	gnat-${FULL_PKGVERSION}
PKGNAME-go?=	gccgo-${FULL_PKGVERSION}
PKGNAME-dlang?=	gdc-${FULL_PKGVERSION}

DESCR-main ?=	${PORTSDIR}/lang/gcc/DESCR
DESCR-libs ?=	${PORTSDIR}/lang/gcc/DESCR-libs
DESCR-c++ ?=	${PORTSDIR}/lang/gcc/DESCR-c++
DESCR-estdc ?=	${PORTSDIR}/lang/gcc/DESCR-estdc
DESCR-f95 ?=	${PORTSDIR}/lang/gcc/DESCR-f95
DESCR-objc ?=	${PORTSDIR}/lang/gcc/DESCR-objc
DESCR-ada ?=	${PORTSDIR}/lang/gcc/DESCR-ada
DESCR-go ?=	${PORTSDIR}/lang/gcc/DESCR-go
DESCR-dlang ?=	${PORTSDIR}/lang/gcc/DESCR-dlang

HOMEPAGE?=	https://gcc.gnu.org/

DIST_SUBDIR=	gcc
SITES?=		${SITE_GCC:=releases/gcc-$(FULL_VERSION)/}
SITES.strap?=	https://distfiles.stumpf.co/ \
		https://spacehopper.org/mirrors/ \
		https://distfiles.bsdfrog.org/

# do not include OSREV
CONFIG=${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd
SUBST_VARS+=CONFIG V

CONFIGURE_ARGS=	--build=${CONFIG}

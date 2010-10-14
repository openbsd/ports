# $OpenBSD: Makefile.inc,v 1.11 2010/10/14 08:03:46 jasper Exp $

# common stuff for all gcc ports
# we assume each one defines a V variable.

CATEGORIES=	lang 

PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_CDROM=Yes

COM=		GNU compiler collection
COMMENT=	${COM}: core C compiler
COMMENT-main=	${COMMENT}
COMMENT-c++ =	${COM}: C++ compiler
COMMENT-estdc=	${COM}: C++ compiler library
COMMENT-g77=	${COM}: f77 compiler
COMMENT-f95=	${COM}: f95 compiler
COMMENT-java=	${COM}: java compiler
COMMENT-objc=	${COM}: obj C compiler
COMMENT-ada=	${COM}: Ada compiler

PKGNAME?=	gcc-${FULL_PKGVERSION}
PKGNAME-c++ ?=	g++-${FULL_PKGVERSION}
PKGNAME-estdc?=	libstdc++-${FULL_PKGVERSION}
PKGNAME-g77?=	g77-${FULL_PKGVERSION}
PKGNAME-f95?=	g95-${FULL_PKGVERSION}
PKGNAME-java?=	gcj-${FULL_PKGVERSION}
PKGNAME-objc?=	gobjc-${FULL_PKGVERSION}
PKGNAME-ada?=	gnat-${FULL_PKGVERSION}

DESCR-main ?=	${PORTSDIR}/lang/gcc/DESCR
DESCR-c++ ?=	${PORTSDIR}/lang/gcc/DESCR-c++
DESCR-estdc ?=	${PORTSDIR}/lang/gcc/DESCR-estdc
DESCR-g77 ?=	${PORTSDIR}/lang/gcc/DESCR-g77
DESCR-f95 ?=	${PORTSDIR}/lang/gcc/DESCR-f95
DESCR-java ?=	${PORTSDIR}/lang/gcc/DESCR-java
DESCR-objc ?=	${PORTSDIR}/lang/gcc/DESCR-objc
DESCR-ada ?=	${PORTSDIR}/lang/gcc/DESCR-ada

HOMEPAGE?=	http://gcc.gnu.org/

DIST_SUBDIR=gcc
CONFIG=${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS+=CONFIG V

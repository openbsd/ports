# $OpenBSD: Makefile.inc,v 1.5 2006/04/05 04:42:58 sturm Exp $

# common stuff for all gcc ports
# we assume each one defines a V variable.

CATEGORIES=	lang 

PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_CDROM=Yes

COM=		'GNU compiler collection'
COMMENT=	${COM}: core C compiler
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

DIST_SUBDIR=gcc
CONFIG=${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS+=CONFIG V

MASTER_SITE_GCC+= ftp://gcc.gnu.org/pub/gcc/
MASTER_SITE_GCC+= ftp://ftp.uvsq.fr/pub/gcc/
MASTER_SITE_GCC+= ftp://gd.tuwien.ac.at/gnu/gcc/
MASTER_SITE_GCC+= ftp://gd.tuwien.ac.at/gnu/gcc/
MASTER_SITE_GCC+= ftp://ftp.fu-berlin.de/unix/languages/gcc/
MASTER_SITE_GCC+= ftp://ftp.gwdg.de/pub/linux/gcc/
MASTER_SITE_GCC+= ftp://ftp.mpi-sb.mpg.de/pub/gnu/mirror/gcc.gnu.org/pub/gcc/
MASTER_SITE_GCC+= ftp://ftp.sunet.se/pub/gnu/gcc/
MASTER_SITE_GCC+= ftp://ftp.ntua.gr/pub/gnu/gcc/
MASTER_SITE_GCC+= ftp://ftp.nluug.nl/pub/languages/gcc/
MASTER_SITE_GCC+= ftp://ftp.dti.ad.jp/pub/lang/gcc/
MASTER_SITE_GCC+= ftp://sunsite.icm.edu.pl/pub/programming/egcs/

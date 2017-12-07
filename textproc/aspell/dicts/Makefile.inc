# $OpenBSD: Makefile.inc,v 1.15 2017/12/07 13:12:44 espie Exp $

# Check individual packages for overrides when bumping this!
PKGNAMEBASE=	${DISTNAME:C/aspell[0-9]/aspell/}
PKGNAME?=	${PKGNAMEBASE:C/-([0-9])$/.\1/}
EPOCH?=		1
FIX_EXTRACT_PERMISSIONS=Yes

DIST_SUBDIR?=	aspell

EXTRACT_SUFX?=	.tar.bz2

HOMEPAGE?=	http://aspell.sourceforge.net/

# GPLv2 - LGPLv2 - FDL - CC ShareAlike
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

NO_TEST?=	Yes

CONFIGURE_STYLE?=simple

RUN_DEPENDS?=	textproc/aspell/core
BUILD_DEPENDS?=	${RUN_DEPENDS}

# $OpenBSD: Makefile.inc,v 1.7 2008/10/05 09:46:52 ajacoutot Exp $

PKGNAME?=	${DISTNAME:C/-([0-9])$/_\1/}p0

DIST_SUBDIR?=	aspell

EXTRACT_SUFX?=	.tar.bz2

HOMEPAGE?=	http://aspell.sourceforge.net/

# GPLv2 - LGPLv2 - FDL - CC ShareAlike
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

NO_REGRESS?=	Yes

CONFIGURE_STYLE?=simple

RUN_DEPENDS?=	::textproc/aspell/core
BUILD_DEPENDS?=	${RUN_DEPENDS}

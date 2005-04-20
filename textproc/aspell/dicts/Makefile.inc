# $OpenBSD: Makefile.inc,v 1.5 2005/04/20 22:07:39 naddy Exp $

PKGNAME?=	${DISTNAME:C/-([0-9])$/_\1/}

DIST_SUBDIR?=	aspell

EXTRACT_SUFX?=	.tar.bz2

HOMEPAGE?=	http://aspell.sourceforge.net/

# GPL
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

NO_REGRESS?=	Yes

CONFIGURE_STYLE?=simple

BUILD_DEPENDS?=	::textproc/aspell/core
RUN_DEPENDS?=	${BUILD_DEPENDS}

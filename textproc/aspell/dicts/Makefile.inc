# $OpenBSD: Makefile.inc,v 1.2 2003/11/21 05:29:37 jolan Exp $

DIST_SUBDIR?=	aspell

EXTRACT_SUFX?=	.tar.bz2

HOMEPAGE?=	http://aspell.sourceforge.net/

MAINTAINER?=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

NO_REGRESS=	Yes

CONFIGURE_STYLE?=simple

BUILD_DEPENDS?=	::textproc/aspell/core
RUN_DEPENDS?=	${BUILD_DEPENDS}

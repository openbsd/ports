# $OpenBSD: Makefile.inc,v 1.1.1.1 2003/11/21 03:43:19 jolan Exp $

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

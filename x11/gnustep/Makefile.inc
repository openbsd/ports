# $OpenBSD: Makefile.inc,v 1.4 2007/07/25 06:10:40 ajacoutot Exp $

DIST_SUBDIR=	gnustep

MAINTAINER?=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 & LGPL
PERMIT_PACKAGE_CDROM?=   Yes
PERMIT_PACKAGE_FTP?=     Yes
PERMIT_DISTFILES_CDROM?= Yes
PERMIT_DISTFILES_FTP?=   Yes

# install the gnustep-examples package if you need a test suite
NO_REGRESS=	Yes

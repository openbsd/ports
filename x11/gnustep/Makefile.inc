# $OpenBSD: Makefile.inc,v 1.1.1.1 2007/05/29 02:59:11 ajacoutot Exp $

CATEGORIES+=	x11/gnustep
DIST_SUBDIR=	gnustep

# GPLv2 & LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FILE?=	GNUmakefile

MAINTAINER?=	Antoine Jacoutot <ajacoutot@openbsd.org>

NO_REGRESS=	Yes

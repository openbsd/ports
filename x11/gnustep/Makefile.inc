# $OpenBSD: Makefile.inc,v 1.7 2011/05/15 13:03:26 sebastia Exp $

DIST_SUBDIR=	gnustep

MAINTAINER?=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3 - LGPLv3 (GNUStep core apps and libs)
# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM?=   Yes
PERMIT_PACKAGE_FTP?=     Yes
PERMIT_DISTFILES_CDROM?= Yes
PERMIT_DISTFILES_FTP?=   Yes

PKGNAME ?=	${DISTNAME:L}

# install the gnustep-examples package if you need a test suite
NO_REGRESS=	Yes

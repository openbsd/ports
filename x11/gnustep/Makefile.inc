# $OpenBSD: Makefile.inc,v 1.9 2013/03/11 11:46:12 espie Exp $

DIST_SUBDIR=	gnustep

MAINTAINER?=	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3 - LGPLv3 (GNUStep core apps and libs)
# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM?=   Yes
PERMIT_PACKAGE_FTP?=     Yes
PERMIT_DISTFILES_FTP?=   Yes

PKGNAME ?=	${DISTNAME:L}

# install the gnustep-examples package if you need a test suite
NO_TEST ?=	Yes

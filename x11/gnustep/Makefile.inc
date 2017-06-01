# $OpenBSD: Makefile.inc,v 1.10 2017/06/01 11:47:06 espie Exp $

DIST_SUBDIR=	gnustep

MAINTAINER?=	Sebastian Reitenbach <sebastia@openbsd.org>

# simplified BSD (libobjc2)
# GPLv3 - LGPLv3 (GNUStep core apps and libs)
# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM?=   Yes
PERMIT_PACKAGE_FTP?=     Yes
PERMIT_DISTFILES_FTP?=   Yes

PKGNAME ?=	${DISTNAME:L}

# install the gnustep-examples package if you need a test suite
NO_TEST ?=	Yes

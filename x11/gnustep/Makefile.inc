# $OpenBSD: Makefile.inc,v 1.11 2019/07/13 10:59:27 sthen Exp $

DIST_SUBDIR=	gnustep

MAINTAINER?=	Sebastian Reitenbach <sebastia@openbsd.org>

# simplified BSD (libobjc2)
# GPLv3 - LGPLv3 (GNUStep core apps and libs)
# GPLv2 - LGPLv2
PERMIT_PACKAGE?=   Yes

PKGNAME ?=	${DISTNAME:L}

# install the gnustep-examples package if you need a test suite
NO_TEST ?=	Yes

# $OpenBSD: Makefile.inc,v 1.5 2008/05/05 09:32:59 ajacoutot Exp $

DIST_SUBDIR=	gnustep

MAINTAINER?=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3 - LGPLv3 (GNUStep core apps and libs)
# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM?=   Yes
PERMIT_PACKAGE_FTP?=     Yes
PERMIT_DISTFILES_CDROM?= Yes
PERMIT_DISTFILES_FTP?=   Yes

# install the gnustep-examples package if you need a test suite
NO_REGRESS=	Yes

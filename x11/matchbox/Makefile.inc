# $OpenBSD: Makefile.inc,v 1.2 2008/11/09 21:12:34 jasper Exp $

CATEGORIES?=	x11 x11/matchbox

HOMEPAGE?=	http://projects.o-hand.com/matchbox/

MASTER_SITES_MATCHBOX=	http://projects.o-hand.com/matchbox/sources/

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

USE_X11?=	Yes

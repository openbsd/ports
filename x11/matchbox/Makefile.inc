# $OpenBSD: Makefile.inc,v 1.3 2008/11/09 21:56:35 jasper Exp $

CATEGORIES?=	x11 x11/matchbox

HOMEPAGE?=	http://projects.o-hand.com/matchbox/

MASTER_SITES_MATCHBOX?=	http://projects.o-hand.com/matchbox/sources/
EXTRACT_SUFX?=		.tar.bz2
DIST_SUBDIR=		matchbox

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

USE_X11?=	Yes

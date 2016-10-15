# $OpenBSD: Makefile.inc,v 1.15 2016/10/15 19:14:20 jasper Exp $

CATEGORIES+=	x11

HOMEPAGE?=	http://www.nomachine.com/

MAJOR_VERSION?=	3.5.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES_NX=	http://code.x2go.org/releases/source/nx-libs/
DIST_SUBDIR=		nx

USE_GMAKE?=		Yes

NO_TEST?=		Yes

CONFIGURE_ARGS +=	--bindir=${PREFIX}/NX/bin \
			--sbindir=${PREFIX}/NX/sbin \
			--datadir=${PREFIX}/NX/share

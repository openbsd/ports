# $OpenBSD: Makefile.inc,v 1.16 2019/07/13 10:59:27 sthen Exp $

CATEGORIES+=	x11

HOMEPAGE?=	http://www.nomachine.com/

MAJOR_VERSION?=	3.5.0

# GPLv2/LGPLv2
PERMIT_PACKAGE?=	Yes

MASTER_SITES_NX=	http://code.x2go.org/releases/source/nx-libs/
DIST_SUBDIR=		nx

USE_GMAKE?=		Yes

NO_TEST?=		Yes

CONFIGURE_ARGS +=	--bindir=${PREFIX}/NX/bin \
			--sbindir=${PREFIX}/NX/sbin \
			--datadir=${PREFIX}/NX/share

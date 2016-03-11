# $OpenBSD: Makefile.inc,v 1.13 2016/03/11 20:28:33 naddy Exp $

SHARED_ONLY=	Yes

CATEGORIES+=	x11

HOMEPAGE?=	http://www.nomachine.com/

MAJOR_VERSION?=	3.5.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

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

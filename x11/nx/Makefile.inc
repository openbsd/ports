# $OpenBSD: Makefile.inc,v 1.8 2011/04/08 18:20:55 jasper Exp $

SHARED_ONLY=	Yes

CATEGORIES+=	x11/nx

HOMEPAGE?=	http://www.nomachine.com/

MAJOR_VERSION?=	3.4.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES?=		http://64.34.161.181/download/${MAJOR_VERSION}/sources/
DIST_SUBDIR=		nx

USE_GMAKE?=		Yes

NO_REGRESS?=		Yes

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--bindir=${PREFIX}/NX/bin \
			--sbindir=${PREFIX}/NX/sbin \
			--datadir=${PREFIX}/NX/share

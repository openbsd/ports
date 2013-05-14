# $OpenBSD: Makefile.inc,v 1.11 2013/05/14 07:17:54 jasper Exp $

SHARED_ONLY=	Yes

CATEGORIES+=	x11

HOMEPAGE?=	http://www.nomachine.com/

MAJOR_VERSION?=	3.5.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_FTP?=	Yes

MASTER_SITES?=		http://64.34.161.181/download/${MAJOR_VERSION}/sources/
DIST_SUBDIR=		nx

USE_GMAKE?=		Yes

NO_TEST?=		Yes

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--bindir=${PREFIX}/NX/bin \
			--sbindir=${PREFIX}/NX/sbin \
			--datadir=${PREFIX}/NX/share

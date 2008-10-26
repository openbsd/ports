# $OpenBSD: Makefile,v 1.19 2008/10/26 23:05:41 naddy Exp $

COMMENT=	library for arbitrary precision arithmetic

DISTNAME=	gmp-4.2.4
SHARED_LIBS +=	gmp                  7.1      # .7.4
CATEGORIES=	devel math

HOMEPAGE=	http://gmplib.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gmplib.org/pub/ \
		${MASTER_SITE_GNU:=gmp/}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}-unknown-openbsd${OSrev}

.include <bsd.port.mk>

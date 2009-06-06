# $OpenBSD: Makefile,v 1.20 2009/06/06 17:45:48 naddy Exp $

COMMENT=	library for arbitrary precision arithmetic

DISTNAME=	gmp-4.3.1
SHARED_LIBS +=  gmp                  8.0      # .8.0
SHARED_LIBS +=  gmpxx                0.0      # .5.0
CATEGORIES=	devel math

HOMEPAGE=	http://gmplib.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.gmplib.org/pub/${DISTNAME}/ \
		${MASTER_SITE_GNU:=gmp/}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-cxx
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}-unknown-openbsd${OSrev}

.include <bsd.port.mk>

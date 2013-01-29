# $OpenBSD: Makefile,v 1.23 2013/01/29 12:40:05 tobiasu Exp $

COMMENT=	library for arbitrary precision arithmetic

DISTNAME=	gmp-5.0.2
REVISION=	1
SHARED_LIBS +=  gmp                  9.0      # 10.2
SHARED_LIBS +=  gmpxx                1.0      # 6.2
CATEGORIES=	devel math

HOMEPAGE=	http://gmplib.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += m stdc++

MASTER_SITES=	ftp://ftp.gmplib.org/pub/${DISTNAME}/ \
		${MASTER_SITE_GNU:=gmp/}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-cxx
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}-unknown-openbsd${OSrev}

.include <bsd.port.mk>

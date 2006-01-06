# $OpenBSD: Makefile,v 1.14 2006/01/06 20:30:26 bernd Exp $

COMMENT=	"library for arbitrary precision arithmetic"

DISTNAME=	gmp-4.1.4
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	gmp 6.3
CATEGORIES=	devel math

HOMEPAGE=	http://www.swox.com/gmp/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# (L)GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gmp/}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
# Don't try to optimize for the local CPU submodel
CONFIGURE_ARGS+=--build=${MACHINE_ARCH}-unknown-openbsd${OSrev}
# For GCC4/Fortran95
CONFIGURE_ARGS+=--enable-mpfr

.include <bsd.port.mk>

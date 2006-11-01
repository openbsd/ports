# $OpenBSD: Makefile,v 1.16 2006/11/01 18:43:09 naddy Exp $

COMMENT=	"library for arbitrary precision arithmetic"

DISTNAME=	gmp-4.2.1
SHARED_LIBS +=	gmp                  7.0      # .7.1
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

.include <bsd.port.mk>

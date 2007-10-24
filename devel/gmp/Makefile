# $OpenBSD: Makefile,v 1.18 2007/10/24 16:19:57 naddy Exp $

COMMENT=	library for arbitrary precision arithmetic

DISTNAME=	gmp-4.2.2
SHARED_LIBS +=	gmp                  7.1      # .7.2
CATEGORIES=	devel math

HOMEPAGE=	http://www.swox.com/gmp/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv3
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

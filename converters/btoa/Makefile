# $OpenBSD: Makefile,v 1.6 2000/02/22 17:08:37 espie Exp $

DISTNAME=	btoa-5.2
PKGNAME=	btoa-5.2.1
CATEGORIES=	converters
NEED_VERSION=	1.210

# The readme says both "public domain" and "may not be used commercially".
# I'm being nice to the authors...
#
RESTRICTED=	"no commercial use"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_LOCAL}
PATCHFILES=	btoa-5.2-patch1.gz

MAKE_FLAGS=	DESTDIR=${PREFIX}
MAKE_FILE=	Makefile.sun

# Turn off the default from bsd.port.mk (-p0), which screws things up
PATCH_DIST_STRIP=  

.include <bsd.port.mk>

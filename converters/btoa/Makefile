# $OpenBSD: Makefile,v 1.3 1999/04/01 06:20:04 brad Exp $

DISTNAME=	btoa-5.2
PKGNAME=	btoa-5.2.1
CATEGORIES=	converters

# The readme says both "public domain" and "may not be used commercially".
# I'm being nice to the authors...
#
RESTRICTED=	"no commercial use"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_LOCAL}
PATCH_SITES=	${MASTER_SITES}
PATCHFILES=	btoa-5.2-patch1.gz

MAKE_FLAGS=	DESTDIR=${PREFIX} -f
MAKEFILE=	Makefile.sun

# Turn off the default from bsd.port.mk (-p0), which screws things up
PATCH_DIST_STRIP=  

.include <bsd.port.mk>

# OpenBSD makefile for:		     btoa
# Version required:                  5.2
# Date created:                      29 April 1998
# Whom:                              Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/04/29 05:05:09 angelos Exp $
#

DISTNAME=          btoa-5.2
PKGNAME=           btoa-5.2.1
CATEGORIES=        converters
MASTER_SITES=      ${MASTER_SITE_LOCAL}

PATCH_SITES=       ${MASTER_SITES}
PATCHFILES=        btoa-5.2-patch1.gz

MAINTAINER=        angelos@openbsd.org

MAKE_FLAGS=        DESTDIR=${PREFIX} -f
MAKEFILE=          Makefile.sun
MAN1=		   btoa.1

# Turn off the default from bsd.port.mk (-p0), which screws things up
PATCH_DIST_STRIP=  

.include <bsd.port.mk>

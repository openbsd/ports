# OpenBSD makefile for:    lynx
# http://sol.slcc.edu/lynx/current/
# Version required:     2.8
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.10 1998/03/12 07:48:28 marc Exp $
#

PKGNAME=        lynx-2.8
CATEGORIES=     www
MAINTAINER=     ports@OpenBSD.ORG

NO_WRKDIR=	"no working directory"
NO_CHECKSUM=	"nothing to checksum"
NO_EXTRACT=	"nothing to extract"
NO_PATCH=	"nothing to patch"
NO_CONFIGURE=	"nothing to configure"

# Override fetch, nothing to fetch
#
do-fetch:
	@${DO_NADA}

# Override build.  Nothing to build but this way the user still sees
# ===>  Building for lynx-2.8 instead of nothing which is what we would
# get if NO_BUILD were defined.
#
do-build:
	@${DO_NADA}

# Just create a symbolic link to the standard distribution lynx
#
do-install:
	@${LN} -fs /usr/bin/lynx ${PREFIX}/bin/lynx

.include <bsd.port.mk>

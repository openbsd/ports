# OpenBSD makefile for:    PNG images library
# Version required:     0.96
# Date created:         December 2, 1997
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1998/02/12 14:38:32 niklas Exp $
#

DISTNAME=       libpng-0.96
PKGNAME=        png-0.96
CATEGORIES=     graphics
MASTER_SITES=   ftp://ftp.uu.net/graphics/png/src/
EXTRACT_SUFX=   .tgz

MAINTAINER=     angelos@openbsd.org

MAKEFILE=       makefile

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

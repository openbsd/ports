# OpenBSD makefile for: mpack
# Version required:     1.5
# Date created:         29 April 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/04/29 05:07:09 angelos Exp $
#

DISTNAME=       mpack-1.5-src
PKGNAME=        mpack-1.5
CATEGORIES=     converters mail news
MASTER_SITES=   ftp://ftp.andrew.cmu.edu/pub/mpack/
EXTRACT_SUFX=   .tar.Z

MAINTAINER=     angelos@openbsd.org

WRKSRC=         ${WRKDIR}/mpack
MAKEFLAGS=      -DDESTDIR=${PREFIX} -f
MAN1=		mpack.1 munpack.1

.include <bsd.port.mk>

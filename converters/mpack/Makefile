# $OpenBSD: Makefile,v 1.4 2000/02/11 00:37:19 espie Exp $

DISTNAME=       mpack-1.5-src
PKGNAME=        mpack-1.5
CATEGORIES=     converters mail news

MAINTAINER=     angelos@openbsd.org

MASTER_SITES=   ftp://ftp.andrew.cmu.edu/pub/mpack/
EXTRACT_SUFX=   .tar.Z
NEED_VERSION=	1.191

WRKDIST=         ${WRKDIR}/mpack
MAKEFLAGS=      -DDESTDIR=${PREFIX} -f

.include <bsd.port.mk>

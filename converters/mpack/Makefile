# $OpenBSD: Makefile,v 1.5 2000/02/12 06:29:51 turan Exp $

DISTNAME=       mpack-1.5-src
PKGNAME=        mpack-1.5
CATEGORIES=     converters mail news

MAINTAINER=     angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=   ftp://ftp.andrew.cmu.edu/pub/mpack/
EXTRACT_SUFX=   .tar.Z
NEED_VERSION=	1.191

WRKDIST=         ${WRKDIR}/mpack
MAKEFLAGS=      -DDESTDIR=${PREFIX} -f

.include <bsd.port.mk>

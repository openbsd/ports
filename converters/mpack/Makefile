# $OpenBSD: Makefile,v 1.7 2000/03/24 22:11:38 espie Exp $

DISTNAME=       mpack-1.5-src
PKGNAME=        mpack-1.5
CATEGORIES=     converters mail news
NEED_VERSION=	1.191

MAINTAINER=     angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=   ftp://ftp.andrew.cmu.edu/pub/mpack/
EXTRACT_SUFX=   .tar.Z

WRKDIST=         ${WRKDIR}/mpack
MAKEFLAGS=      -DDESTDIR=${PREFIX} -f

.include <bsd.port.mk>

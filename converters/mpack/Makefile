# $OpenBSD: Makefile,v 1.10 2000/10/22 15:41:40 espie Exp $

DISTNAME=       mpack-1.5-src
PKGNAME=        mpack-1.5
CATEGORIES=     converters mail news
NEED_VERSION=	1.191

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ftp://ftp.andrew.cmu.edu/pub/mpack/
EXTRACT_SUFX=   .tar.Z

WRKDIST=         ${WRKDIR}/mpack
MAKE_FLAGS=      DESTDIR=${PREFIX}
FAKE_FLAGS=	 DESTDIR=${WRKINST}${PREFIX}


.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2001/05/05 23:11:29 lebel Exp $

COMMENT=	"external MIME packer/unpacker"

DISTNAME=       mpack-1.5-src
PKGNAME=        mpack-1.5
CATEGORIES=     converters mail news
NEED_VERSION=	1.402

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

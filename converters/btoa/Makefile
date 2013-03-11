# $OpenBSD: Makefile,v 1.19 2013/03/11 01:30:27 espie Exp $

COMMENT=	encode/decode binary to printable ASCII

DISTNAME=	btoa-5.2
PKGNAME=	btoa-5.2.1
CATEGORIES=	converters

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.netsw.org/system/tools/fileutils/encode/
PATCHFILES=	btoa-5.2-patch1.gz

MAKE_FLAGS=	DESTDIR=${PREFIX}
MAKE_FILE=	Makefile.sun
FAKE_FLAGS=	DESTDIR=${WRKINST}${PREFIX}
USE_GROFF =	Yes

# Turn off the default from bsd.port.mk (-p0), which screws things up
PATCH_DIST_STRIP=  

NO_TEST=	Yes

.include <bsd.port.mk>

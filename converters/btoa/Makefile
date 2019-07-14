# $OpenBSD: Makefile,v 1.22 2019/07/14 00:39:35 naddy Exp $

COMMENT=	encode/decode binary to printable ASCII

DISTNAME=	btoa-5.2
PKGNAME=	btoa-5.2.1
CATEGORIES=	converters
REVISION =	0

PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.netsw.org/system/tools/fileutils/encode/
PATCHFILES=	btoa-5.2-patch1.gz

MAKE_FLAGS=	DESTDIR=${PREFIX}
MAKE_FILE=	Makefile.sun
FAKE_FLAGS=	DESTDIR=${WRKINST}${PREFIX}

# Turn off the default from bsd.port.mk (-p0), which screws things up
PATCH_DIST_STRIP=  

NO_TEST=	Yes

.include <bsd.port.mk>

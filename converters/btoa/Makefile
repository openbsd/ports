# $OpenBSD: Makefile,v 1.14 2002/12/23 00:37:50 pvalchev Exp $

COMMENT=	"encode/decode binary to printable ASCII"

DISTNAME=	btoa-5.2
PKGNAME=	btoa-5.2.1
CATEGORIES=	converters

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_LOCAL}
PATCHFILES=	btoa-5.2-patch1.gz

MAKE_FLAGS=	DESTDIR=${PREFIX}
MAKE_FILE=	Makefile.sun
FAKE_FLAGS=	DESTDIR=${WRKINST}${PREFIX}

# Turn off the default from bsd.port.mk (-p0), which screws things up
PATCH_DIST_STRIP=  

NO_REGRESS=	Yes

.include <bsd.port.mk>

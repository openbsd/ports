# $OpenBSD: Makefile,v 1.8 2000/03/28 13:44:30 espie Exp $

DISTNAME=	btoa-5.2
PKGNAME=	btoa-5.2.1
CATEGORIES=	converters
NEED_VERSION=	1.210

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_LOCAL}
PATCHFILES=	btoa-5.2-patch1.gz

MAKE_FLAGS=	DESTDIR=${PREFIX}
MAKE_FILE=	Makefile.sun
FAKE_FLAGS=	DESTDIR=${WRKINST}${PREFIX}
FAKE=		Yes

# Turn off the default from bsd.port.mk (-p0), which screws things up
PATCH_DIST_STRIP=  

.include <bsd.port.mk>

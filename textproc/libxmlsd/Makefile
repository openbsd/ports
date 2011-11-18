# $OpenBSD: Makefile,v 1.9 2011/11/18 11:16:24 espie Exp $

COMMENT=	XML validation library

DISTNAME=	xmlsd-0.6.0
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	textproc devel
SHARED_LIBS=	xmlsd	2.0

HOMEPAGE=	https://opensource.conformal.com/wiki/Xmlsd
MASTER_SITES=	https://opensource.conformal.com/snapshots/xmlsd/

MAINTAINER=	David Hill <dhill@openbsd.org>

WANTLIB= 	expat

NO_REGRESS=	Yes

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-configure:
	printf "major=${LIBxmlsd_VERSION:R}\nminor=${LIBxmlsd_VERSION:E}\n" \
            > ${WRKSRC}/shlib_version

.include <bsd.port.mk>

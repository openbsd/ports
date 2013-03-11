# $OpenBSD: Makefile,v 1.16 2013/03/11 11:42:42 espie Exp $

COMMENT=	XML validation library

DISTNAME=	xmlsd-0.10.0
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	textproc devel
SHARED_LIBS=	xmlsd	3.1

HOMEPAGE=	https://opensource.conformal.com/wiki/Xmlsd
MASTER_SITES=	https://opensource.conformal.com/snapshots/xmlsd/

MAINTAINER=	David Hill <dhill@mindcry.org>

WANTLIB= 	expat

# ISC
PERMIT_PACKAGE_CDROM=	Yes

do-configure:
	printf "major=${LIBxmlsd_VERSION:R}\nminor=${LIBxmlsd_VERSION:E}\n" \
            > ${WRKSRC}/shlib_version

.include <bsd.port.mk>

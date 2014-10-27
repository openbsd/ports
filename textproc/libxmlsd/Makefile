# $OpenBSD: Makefile,v 1.17 2014/10/27 13:23:11 gonzalo Exp $

COMMENT=	XML validation library

DISTNAME=	xmlsd-0.10.1
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

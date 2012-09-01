# $OpenBSD: Makefile,v 1.14 2012/09/01 12:02:27 naddy Exp $

COMMENT=	XML validation library

DISTNAME=	xmlsd-0.9.0
PKGNAME=	lib${DISTNAME}
REVISION=	0
CATEGORIES=    	textproc devel
SHARED_LIBS=	xmlsd	3.0

HOMEPAGE=	https://opensource.conformal.com/wiki/Xmlsd
MASTER_SITES=	https://opensource.conformal.com/snapshots/xmlsd/

MAINTAINER=	David Hill <dhill@mindcry.org>

WANTLIB= 	expat

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-configure:
	printf "major=${LIBxmlsd_VERSION:R}\nminor=${LIBxmlsd_VERSION:E}\n" \
            > ${WRKSRC}/shlib_version

.include <bsd.port.mk>

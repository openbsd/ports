# $OpenBSD: Makefile,v 1.12 2012/08/07 07:33:55 ajacoutot Exp $

COMMENT=	XML validation library

DISTNAME=	xmlsd-0.8.1
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	textproc devel
SHARED_LIBS=	xmlsd	2.1

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

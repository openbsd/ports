# $OpenBSD: Makefile,v 1.16 2015/04/21 18:40:20 sthen Exp $

COMMENT=	compression wrapper library

DISTNAME=	shrink-0.5.4
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	archivers devel
SHARED_LIBS=	shrink	2.0
REVISION=	0

HOMEPAGE=	http://opensource.conformal.com/wiki/Shrink
MASTER_SITES=	http://opensource.conformal.com/snapshots/shrink/

MAINTAINER=	David Hill <dhill@mindcry.org>

LIB_DEPENDS=	archivers/lzo2 \
		archivers/xz

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto lzma lzo2 pthread ssl util z

do-configure:
	printf "major=${LIBshrink_VERSION:R}\nminor=${LIBshrink_VERSION:E}\n" \
            > ${WRKSRC}/libshrink/shlib_version

.include <bsd.port.mk>

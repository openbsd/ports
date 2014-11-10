# $OpenBSD: Makefile,v 1.15 2014/11/10 16:42:52 benoit Exp $

COMMENT=	compression wrapper library

DISTNAME=	shrink-0.5.4
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	archivers devel
SHARED_LIBS=	shrink	2.0

HOMEPAGE=	http://opensource.conformal.com/wiki/Shrink
MASTER_SITES=	http://opensource.conformal.com/snapshots/shrink/

MAINTAINER=	David Hill <dhill@mindcry.org>

WANTLIB=	c crypto lzma lzo2 ssl util z
LIB_DEPENDS=	archivers/lzo2 \
		archivers/xz

# ISC
PERMIT_PACKAGE_CDROM=	Yes

do-configure:
	printf "major=${LIBshrink_VERSION:R}\nminor=${LIBshrink_VERSION:E}\n" \
            > ${WRKSRC}/libshrink/shlib_version

.include <bsd.port.mk>

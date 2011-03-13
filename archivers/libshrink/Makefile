# $OpenBSD: Makefile,v 1.2 2011/03/13 20:43:24 jasper Exp $

COMMENT=	compression wrapper library

DISTNAME=	shrink-0.2
PKGNAME=	lib${DISTNAME}
REVISION=	0
CATEGORIES=    	archivers devel
SHARED_LIBS=	shrink	0.0
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://opensource.conformal.com/wiki/Shrink	
MASTER_SITES=	http://opensource.conformal.com/snapshots/shrink/

MAINTAINER=	David Hill <dhill@openbsd.org>

WANTLIB=	c crypto lzma lzo2 ssl util z
LIB_DEPENDS=	archivers/lzo2 \
		archivers/xz

NO_REGRESS=	Yes

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif 

do-configure:
	printf "major=${LIBshrink_VERSION:R}\nminor=${LIBshrink_VERSION:E}\n" \
            > ${WRKSRC}/libshrink/shlib_version

.include <bsd.port.mk>

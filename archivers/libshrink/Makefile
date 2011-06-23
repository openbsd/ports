# $OpenBSD: Makefile,v 1.4 2011/06/23 22:50:26 naddy Exp $

COMMENT=	compression wrapper library

DISTNAME=	shrink-0.2.1
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	archivers devel
SHARED_LIBS=	shrink	0.1

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

FAKE_FLAGS=	MANDIR=${PREFIX}/man/man

do-configure:
	printf "major=${LIBshrink_VERSION:R}\nminor=${LIBshrink_VERSION:E}\n" \
            > ${WRKSRC}/libshrink/shlib_version

.include <bsd.port.mk>

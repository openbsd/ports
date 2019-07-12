# $OpenBSD: Makefile,v 1.7 2019/07/12 20:47:53 sthen Exp $

COMMENT=	Debian package repository producer

V=		5.1.1
REVISION=	3
PKGNAME=	reprepro-${V}
DISTNAME=	reprepro_${V}.orig
WRKDIST=	${WRKDIR}/reprepro-${V}

CATEGORIES=	misc databases sysutils
MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/r/reprepro/}

HOMEPAGE=	https://salsa.debian.org/brlink/reprepro

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	archive bz2 c gpg-error gpgme lib/db4/db>=4 lzma z

LIB_DEPENDS=	archivers/bzip2 \
		archivers/libarchive \
		archivers/xz \
		databases/db/v4 \
		security/gpgme

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
		LDFLAGS="-L${LOCALBASE}/lib"

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

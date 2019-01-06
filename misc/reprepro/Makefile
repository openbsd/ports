# $OpenBSD: Makefile,v 1.4 2019/01/06 14:50:49 danj Exp $

COMMENT=	Debian package repository producer

V=		5.1.1
REVISION=	1
PKGNAME=	reprepro-${V}
DISTNAME=	reprepro_${V}.orig
WRKDIST=	${WRKDIR}/reprepro-${V}

CATEGORIES=	misc databases sysutils
MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/r/reprepro/}

HOMEPAGE=	https://salsa.debian.org/brlink/reprepro

MAINTAINER=	Donovan Watteau <tsoomi@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

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

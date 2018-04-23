# $OpenBSD: Makefile,v 1.19 2018/04/23 21:48:07 bcallah Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-1.5.1
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  3.0      # 5.0

HOMEPAGE=		https://libzip.org/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 c crypto ssl z

MASTER_SITES=		https://libzip.org/download/

MODULES =		devel/cmake

LIB_DEPENDS =		archivers/bzip2

.include <bsd.port.mk>

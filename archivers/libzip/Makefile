# $OpenBSD: Makefile,v 1.18 2018/01/09 23:10:43 bcallah Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-1.4.0
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  2.3      # 5.0

HOMEPAGE=		https://www.nih.at/libzip/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 c z

MASTER_SITES=		${HOMEPAGE}

MODULES =		devel/cmake

LIB_DEPENDS =		archivers/bzip2

.include <bsd.port.mk>

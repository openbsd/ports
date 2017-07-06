# $OpenBSD: Makefile,v 1.15 2017/07/06 07:57:33 bcallah Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-1.2.0
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  2.0      # 4.0

HOMEPAGE=		https://www.nih.at/libzip/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>

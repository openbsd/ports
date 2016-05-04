# $OpenBSD: Makefile,v 1.13 2016/05/04 06:09:55 jasper Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-1.1.2
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  1.1      # 4.0

HOMEPAGE=		http://www.nih.at/libzip/

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>

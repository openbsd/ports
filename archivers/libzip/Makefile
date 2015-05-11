# $OpenBSD: Makefile,v 1.11 2015/05/11 21:22:19 jasper Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-1.0.1
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  1.1      # 4.0

HOMEPAGE=		http://www.nih.at/libzip/

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>

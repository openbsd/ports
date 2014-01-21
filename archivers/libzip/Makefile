# $OpenBSD: Makefile,v 1.9 2014/01/21 22:27:34 jca Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-0.11.2
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  1.0      # 3.0

HOMEPAGE=		http://www.nih.at/libzip/

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>

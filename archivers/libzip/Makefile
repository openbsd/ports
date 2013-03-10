# $OpenBSD: Makefile,v 1.6 2013/03/10 22:28:04 espie Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-0.10.1
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  0.0      # 1.0

HOMEPAGE=		http://www.nih.at/libzip/

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z

MASTER_SITES=		${HOMEPAGE}

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>

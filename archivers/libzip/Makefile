# $OpenBSD: Makefile,v 1.8 2013/04/04 16:03:55 brad Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-0.10.1
REVISION=		0
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  0.0      # 1.0

HOMEPAGE=		http://www.nih.at/libzip/

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>

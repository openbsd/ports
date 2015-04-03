# $OpenBSD: Makefile,v 1.10 2015/04/03 18:20:49 sthen Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-0.11.2
REVISION=		0
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

# $OpenBSD: Makefile,v 1.12 2016/03/11 19:59:11 naddy Exp $

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

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2010/11/27 09:16:57 jasper Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-0.9.3
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  0.0      # 1.0

HOMEPAGE=		http://www.nih.at/libzip/

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c z

MASTER_SITES=		${HOMEPAGE}

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>

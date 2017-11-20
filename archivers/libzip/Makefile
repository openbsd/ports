# $OpenBSD: Makefile,v 1.17 2017/11/20 19:13:23 bcallah Exp $

COMMENT=		library for reading, creating and modifying zip archives

DISTNAME=		libzip-1.3.2
CATEGORIES=		archivers
SHARED_LIBS +=  zip                  2.2      # 5.0

HOMEPAGE=		https://www.nih.at/libzip/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# BSD-3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c z

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-bzip2

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.39 2014/02/01 16:27:59 espie Exp $

COMMENT=	utilities for manipulating PostScript documents

# tarball from Fedora SRPM
DISTNAME=	psutils-1.21
EXTRACT_SUFX=	.tar.xz
REVISION =	0

CATEGORIES=	print

HOMEPAGE=	https://github.com/rrthomas/psutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like (${WRKSRC}/LICENSE)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c paper

MASTER_SITES=	https://distfiles.bsdfrog.org/

LIB_DEPENDS=	print/libpaper

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

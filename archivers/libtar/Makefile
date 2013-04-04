# $OpenBSD: Makefile,v 1.11 2013/04/04 21:45:03 naddy Exp $

COMMENT=	C library for manipulating tar files

DISTNAME=	libtar-1.2.11
REVISION=	1

SHARED_LIBS=	tar	0.0	# .1.2

CATEGORIES=	archivers devel

HOMEPAGE=	http://www.feep.net/libtar/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c z

MASTER_SITES=	http://distfiles.nl/ \
		ftp://ftp.feep.net/pub/software/libtar/

NO_TEST=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.8 2013/03/10 22:28:04 espie Exp $

COMMENT=	C library for manipulating tar files

DISTNAME=	libtar-1.2.11

SHARED_LIBS=	tar	0.0	# .1.2

CATEGORIES=	archivers devel

HOMEPAGE=	http://www.feep.net/libtar/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

REVISION =	0
WANTLIB=	c z

MASTER_SITES=	http://distfiles.nl/ \
		ftp://ftp.feep.net/pub/software/libtar/

USE_LIBTOOL=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

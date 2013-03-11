# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:10 espie Exp $

COMMENT=	library to determine file type

V=		5.11
DISTNAME=	file-${V}
PKGNAME=	libmagic-${V}

SHARED_LIBS +=  magic                3.0      # 1.0

CATEGORIES=	sysutils devel

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += z

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

CONFIGURE_STYLE= gnu
USE_LIBTOOL=	Yes

.include <bsd.port.mk>

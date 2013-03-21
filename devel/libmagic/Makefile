# $OpenBSD: Makefile,v 1.16 2013/03/21 08:45:15 ajacoutot Exp $

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

.include <bsd.port.mk>

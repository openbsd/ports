# $OpenBSD: Makefile,v 1.17 2013/09/29 23:29:22 bcallah Exp $

COMMENT=	library to determine file type

V=		5.15
DISTNAME=	file-${V}
PKGNAME=	libmagic-${V}

SHARED_LIBS +=  magic                4.0      # 1.0

CATEGORIES=	sysutils devel

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += z

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>

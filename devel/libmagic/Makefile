# $OpenBSD: Makefile,v 1.24 2015/09/08 19:35:44 sthen Exp $

COMMENT=	library to determine file type

# update devel/py-libmagic in sync with this
V=		5.24
DISTNAME=	file-${V}
PKGNAME=	libmagic-${V}

SHARED_LIBS +=  magic                4.2      # 1.0

CATEGORIES=	sysutils devel

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += z

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.18 2014/03/13 10:56:45 sthen Exp $

COMMENT=	library to determine file type

# update devel/py-libmagic in sync with this
V=		5.17
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

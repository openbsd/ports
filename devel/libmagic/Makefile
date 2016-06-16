# $OpenBSD: Makefile,v 1.28 2016/06/16 14:17:52 giovanni Exp $

COMMENT=	library to determine file type

# update devel/py-libmagic in sync with this
V=		5.27
REVISION=	0
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

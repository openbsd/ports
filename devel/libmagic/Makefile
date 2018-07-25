# $OpenBSD: Makefile,v 1.35 2018/07/25 14:22:57 sthen Exp $

COMMENT=	library to determine file type

# update devel/py-libmagic in sync with this
V=		5.34
DISTNAME=	file-${V}
PKGNAME=	libmagic-${V}

SHARED_LIBS +=  magic                5.0      # 1.0

CATEGORIES=	sysutils devel

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += z

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-fsect-man5

.include <bsd.port.mk>

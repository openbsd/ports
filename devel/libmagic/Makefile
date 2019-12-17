# $OpenBSD: Makefile,v 1.40 2019/12/17 14:52:01 sthen Exp $

COMMENT=	library to determine file type

V=		5.38
DISTNAME=	file-${V}
PKGNAME=	libmagic-${V}

SHARED_LIBS +=  magic                5.0      # 1.0

CATEGORIES=	sysutils devel

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += z

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-fsect-man5

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>

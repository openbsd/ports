# $OpenBSD: Makefile,v 1.41 2020/07/20 13:32:56 sthen Exp $

COMMENT=	library to determine file type

V=		5.39
DISTNAME=	file-${V}
PKGNAME=	libmagic-${V}

SHARED_LIBS +=  magic                5.0      # 1.0

CATEGORIES=	sysutils devel

HOMEPAGE=	https://www.darwinsys.com/file/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += z

MASTER_SITES=	http://ftp.astron.com/pub/file/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-fsect-man5

DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-install:
	mv ${PREFIX}/bin/{,e}file
	mv ${PREFIX}/man/man1/{,e}file.1

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.20 2015/01/22 13:11:43 naddy Exp $

COMMENT=	GNU portable threads

DISTNAME=	pth-2.0.7
REVISION=	0
SHARED_LIBS=	pth 20.25
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=pth/}

HOMEPAGE=	https://www.gnu.org/software/pth/

PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --enable-syscall-soft \
		 --enable-optimize \
		 --enable-batch

TEST_TARGET=	test

.include <bsd.port.mk>

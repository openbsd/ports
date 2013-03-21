# $OpenBSD: Makefile,v 1.18 2013/03/21 08:45:16 ajacoutot Exp $

COMMENT=	GNU portable threads

DISTNAME=	pth-2.0.7
SHARED_LIBS=	pth 20.25
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=pth/}

HOMEPAGE=	http://www.gnu.org/software/pth/

PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --enable-syscall-soft \
		 --enable-optimize \
		 --enable-batch

TEST_TARGET=	test

.include <bsd.port.mk>

COMMENT=	GNU portable threads

DISTNAME=	pth-2.0.7
REVISION=	1
SHARED_LIBS=	pth 20.25
CATEGORIES=	devel
SITES=		${SITE_GNU:=pth/}

HOMEPAGE=	https://www.gnu.org/software/pth/

PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static \
		 --enable-syscall-soft \
		 --enable-optimize \
		 --enable-batch

TEST_TARGET=	test

.include <bsd.port.mk>

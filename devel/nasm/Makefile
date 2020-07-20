# $OpenBSD: Makefile,v 1.47 2020/07/20 05:51:07 jasper Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	general-purpose multi-platform x86 assembler

VERSION=	2.15.03
DISTNAME=	nasm-${VERSION}
CATEGORIES=	devel lang
MASTER_SITES=	${HOMEPAGE}/pub/nasm/releasebuilds/${VERSION}/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.nasm.us/

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--docdir=${PREFIX}/share/doc/nasm \
		--htmldir=${PREFIX}/share/doc/nasm/html

ALL_TARGET=	everything
INSTALL_TARGET=	install_everything

NO_TEST=	Yes

DEBUG_PACKAGES =${BUILD_PACKAGES}

.include <bsd.port.mk>

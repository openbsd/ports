# $OpenBSD: Makefile,v 1.45 2019/07/17 14:49:21 danj Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	general-purpose multi-platform x86 assembler

VERSION=	2.14.02
REVISION=	1
DISTNAME=	nasm-${VERSION}
CATEGORIES=	devel lang
MASTER_SITES=	${HOMEPAGE}/pub/nasm/releasebuilds/${VERSION}/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.nasm.us/

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

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.42 2018/12/30 19:26:53 jasper Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	general-purpose multi-platform x86 assembler

VERSION=	2.14.02
DISTNAME=	nasm-${VERSION}
CATEGORIES=	devel lang
MASTER_SITES=	${HOMEPAGE}/pub/nasm/releasebuilds/${VERSION}/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://www.nasm.us/

MAINTAINER=	Gallon Sylvestre <ccna.syl@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--docdir=${PREFIX}/share/doc/nasm \
		--htmldir=${PREFIX}/share/doc/nasm/html

ALL_TARGET=	everything
INSTALL_TARGET=	install_everything

NO_TEST=	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.41 2018/11/18 19:15:07 ajacoutot Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	general-purpose multi-platform x86 assembler

VERSION=	2.14
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

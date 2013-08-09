# $OpenBSD: Makefile,v 1.35 2013/08/09 10:29:50 syl Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	general-purpose multi-platform x86 assembler

VERSION=	2.10.09
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
USE_GROFF=	Yes
CONFIGURE_STYLE= gnu

DESTDIRNAME=	INSTALLROOT

ALL_TARGET=	everything
INSTALL_TARGET=	install_everything

NO_TEST=	Yes

.include <bsd.port.mk>

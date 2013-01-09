# $OpenBSD: Makefile,v 1.33 2013/01/09 00:02:15 brad Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	general-purpose multi-platform x86 assembler

VERSION=	2.10.07
DISTNAME=	nasm-${VERSION}
CATEGORIES=	devel lang
MASTER_SITES=	${HOMEPAGE}/pub/nasm/releasebuilds/${VERSION}/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://www.nasm.us/

MAINTAINER=	Gallon Sylvestre <ccna.syl@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

USE_GMAKE=	Yes
USE_GROFF=	Yes
CONFIGURE_STYLE= gnu

DESTDIRNAME=	INSTALLROOT

ALL_TARGET=	everything
INSTALL_TARGET=	install_everything

NO_REGRESS=	Yes

.include <bsd.port.mk>

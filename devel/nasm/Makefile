# $OpenBSD: Makefile,v 1.28 2009/08/18 17:11:15 okan Exp $

COMMENT=	general-purpose multi-platform x86 assembler

ONLY_FOR_ARCHS=	i386 amd64

DISTNAME=	nasm-2.07
CATEGORIES=	devel lang

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nasm/}
HOMEPAGE=	http://www.nasm.us/

MAINTAINER=	Gallon Sylvestre <ccna.syl@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE= gnu dest

ALL_TARGET=	everything
INSTALL_TARGET=	install_everything

NO_REGRESS=	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.8 1999/04/01 06:20:07 brad Exp $

DISTNAME=       slang1.2.2
PKGNAME=        libslang-1.2.2
CATEGORIES=	devel

NEED_VERSION=	1.64

MAINTAINER=     todd@OpenBSD.org

MASTER_SITES=   ftp://space.mit.edu/pub/davis/slang/

GNU_CONFIGURE=  yes
ALL_TARGET=     all
INSTALL_TARGET= install
.if (${MACHINE_ARCH} != "alpha")
ALL_TARGET+=	elf
INSTALL_TARGET+=install-elf
.endif
WRKSRC=         ${WRKDIR}/slang

post-install:
	${LDCONFIG} -m ${PREFIX}/lib
.include <bsd.port.mk>

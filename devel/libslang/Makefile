# $OpenBSD: Makefile,v 1.6 1998/11/20 03:42:59 marc Exp $
#

DISTNAME=       slang1.2.2
PKGNAME=        libslang-1.2.2
CATEGORIES=	devel

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

# $OpenBSD: Makefile,v 1.4 1998/10/08 18:47:14 marc Exp $
#

DISTNAME=       slang0.99-38
PKGNAME=        libslang-0.99.38
CATEGORIES=	devel

BROKEN=		"newer version available"

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
.if (${MACHINE_ARCH} != "alpha")
	@rm -f ${PREFIX}/lib/libslang.so.99.3[348]
.endif
	${LDCONFIG} -m ${PREFIX}/lib
.include <bsd.port.mk>

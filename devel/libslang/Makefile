# OpenBSD makefile for:    S-Lang library
# Version required:     0.99-38
# Date created:         19 November 1997
# Whom:                 todd@OpenBSD.org
#
# $OpenBSD: Makefile,v 1.3 1998/02/10 10:45:16 niklas Exp $
#

DISTNAME=       slang0.99-38
PKGNAME=        libslang-0.99.38
CATEGORIES=	devel
MASTER_SITES=   ftp://space.mit.edu/pub/davis/slang/

MAINTAINER=     todd@OpenBSD.org

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

# OpenBSD makefile for:    S-Lang library
# Version required:     0.99-38
# Date created:         19 November 1997
# Whom:                 todd@OpenBSD.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/20 00:18:38 todd Exp $
#

DISTNAME=       slang0.99-38
PKGNAME=        libslang-0.99.38
CATEGORIES=	devel
MASTER_SITES=   ftp://space.mit.edu/pub/davis/slang/

MAINTAINER=     todd@OpenBSD.org

GNU_CONFIGURE=  yes
ALL_TARGET=     all elf
INSTALL_TARGET= install install-elf
WRKSRC=         ${WRKDIR}/slang

post-install:
	@rm -f ${PREFIX}/lib/libslang.so.99.3[348]
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

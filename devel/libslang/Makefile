# $OpenBSD: Makefile,v 1.11 1999/07/15 01:14:21 brad Exp $

DISTNAME=	slang-1.3.8
PKGNAME=	libslang-1.3.8
CATEGORIES=	devel
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v1.3/

NEED_VERSION=	1.73

MAINTAINER=	todd@openbsd.org

GNU_CONFIGURE=  yes

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

test:
	@cd ${WRKSRC} && ${MAKE} runtests

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
ALL_TARGET= all elf
INSTALL_TARGET= install-elf
.endif

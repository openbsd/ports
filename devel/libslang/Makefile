# $OpenBSD: Makefile,v 1.12 1999/10/01 23:17:38 brad Exp $

DISTNAME=	slang-1.3.9
PKGNAME=	libslang-1.3.9
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

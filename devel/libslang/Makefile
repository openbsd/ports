# $OpenBSD: Makefile,v 1.9 1999/06/23 01:44:36 marc Exp $

DISTNAME=	slang-1.3.7
PKGNAME=	libslang-1.3.7
CATEGORIES=	devel

NEED_VERSION=	1.64

MAINTAINER=	todd@OpenBSD.org

MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v1.3/

GNU_CONFIGURE=  yes

test:
	@cd ${WRKSRC} && ${MAKE} runtests

.include <bsd.port.mk>

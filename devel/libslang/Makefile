# $OpenBSD: Makefile,v 1.14 1999/12/29 23:58:11 brad Exp $

DISTNAME=	slang-1.3.10
PKGNAME=	libslang-1.3.10
CATEGORIES=	devel
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v1.3/ \
		http://gd.tuwien.ac.at/editors/davis/slang/v1.3/

NEED_VERSION=	1.73

MAINTAINER=	todd@openbsd.org

GNU_CONFIGURE=  yes

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib

test:	build
	@cd ${WRKSRC} && make runtests

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
ALL_TARGET= all elf
INSTALL_TARGET= install-elf
.endif

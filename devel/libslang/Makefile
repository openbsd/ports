# $OpenBSD: Makefile,v 1.26 2001/02/08 02:05:35 brad Exp $

.if ${MACHINE_ARCH} == "powerpc"
#BROKEN=		"BROKEN on powerpc: reason unknown at the moment"
.endif

DISTNAME=	slang-1.4.3
PKGNAME=	libslang-1.4.3
CATEGORIES=	devel
NEED_VERSION=	1.336
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v1.4/ \
		http://gd.tuwien.ac.at/editors/davis/slang/v1.4/

HOMEPAGE=	http://www.s-lang.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

test:	build
	@cd ${WRKSRC} && ${MAKE} runtests

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
ALL_TARGET= all elf
INSTALL_TARGET= install-elf
.endif

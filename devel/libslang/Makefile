# $OpenBSD: Makefile,v 1.22 2000/09/05 03:27:29 brad Exp $

DISTNAME=	slang-1.4.2
PKGNAME=	libslang-1.4.2
CATEGORIES=	devel
NEED_VERSION=	1.322
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v1.4/ \
		http://gd.tuwien.ac.at/editors/davis/slang/v1.4/

HOMEPAGE=	http://www.s-lang.org/

MAINTAINER=	todd@openbsd.org

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

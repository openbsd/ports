# $OpenBSD: Makefile,v 1.20 2000/06/25 20:38:30 brad Exp $

DISTNAME=	slang-1.4.1
PKGNAME=	libslang-1.4.1
CATEGORIES=	devel
NEED_VERSION=	1.301
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v1.4/ \
		http://gd.tuwien.ac.at/editors/davis/slang/v1.4/

HOMEPAGE=	http://www.s-lang.org/

MAINTAINER=	todd@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

do-install:
	@cd ${WRKDIST}/src && ${MAKE} prefix="${PREFIX}" ${INSTALL_TARGET}
	@if [ ${INSTALL_TARGET} == "install-elf" ]; then \
	cd ${WRKDIST}/src && ${MAKE} prefix="${PREFIX}" install-links; \
	fi

test:	build
	@cd ${WRKSRC} && ${MAKE} runtests

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
ALL_TARGET= all elf
INSTALL_TARGET= install-elf
.endif

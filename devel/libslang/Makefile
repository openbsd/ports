# $OpenBSD: Makefile,v 1.19 2000/06/13 02:07:48 kevlo Exp $

DISTNAME=	slang-1.4.1
PKGNAME=	libslang-1.4.1
CATEGORIES=	devel
NEED_VERSION=	1.301
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v1.4/ \
		http://gd.tuwien.ac.at/editors/davis/slang/v1.4/

MAINTAINER=	todd@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

do-install:
	@cd ${WRKDIST}/src && make prefix=${PREFIX} ${INSTALL_TARGET}
	@if [ ${INSTALL_TARGET} == "install-elf" ]; then \
	cd ${WRKDIST}/src && make prefix=${PREFIX} install-links; \
	fi

test:	build
	@cd ${WRKSRC} && make runtests

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
ALL_TARGET= all elf
INSTALL_TARGET= install-elf
.endif

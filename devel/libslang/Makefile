# $OpenBSD: Makefile,v 1.16 2000/03/24 22:11:39 espie Exp $

DISTNAME=	slang-1.3.10
PKGNAME=	libslang-1.3.10
CATEGORIES=	devel
NEED_VERSION=	1.218
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slang/v1.3/ \
		http://gd.tuwien.ac.at/editors/davis/slang/v1.3/


MAINTAINER=	todd@openbsd.org

LICENSE_TYPE=	Artistic GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE=		Yes
GNU_CONFIGURE=  Yes

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

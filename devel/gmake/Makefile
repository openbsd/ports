# $OpenBSD: Makefile,v 1.17 2000/06/30 02:10:09 fgsch Exp $

DISTNAME=	make-3.78.1
PKGNAME=	gmake-3.78.1
CATEGORIES=	devel
NEED_VERSION=	1.309
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= make

MAINTAINER=	todd@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-transform-name='s/^/g/'

post-extract:
	@rm -f ${WRKSRC}/make.info*

post-install:
	@chmod g-s ${PREFIX}/bin/gmake
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/gmake
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir

.include <bsd.port.mk>

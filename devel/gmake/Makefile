# $OpenBSD: Makefile,v 1.12 1999/12/17 14:29:10 brad Exp $

DISTNAME=	make-3.78.1
PKGNAME=	gmake-3.78.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= make

MAINTAINER=	todd@openbsd.org

SEPARATE_BUILD=	simple
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-transform-name='s/^/g/'

post-install:
	@chmod g-s ${PREFIX}/bin/gmake
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/gmake
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir

.include <bsd.port.mk>

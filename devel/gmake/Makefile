# $OpenBSD: Makefile,v 1.10 1999/10/27 20:27:45 brad Exp $

DISTNAME=	make-3.78.1
PKGNAME=	gmake-3.78.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= make

NEED_VERSION=	1.121

MAINTAINER=	todd@openbsd.org

SEPARATE_BUILD=	simple
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-transform-name='s/^/g/'

post-extract:
	@${RM} -f ${WRKSRC}/make.info*

post-install:
	@${CHMOD} g-s ${PREFIX}/bin/gmake
	@${CHOWN} ${BINOWN}:${BINGRP} ${PREFIX}/bin/gmake
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.10 1999/12/10 15:16:59 brad Exp $

DISTNAME=	bash-1.14.7
CATEGORIES=	shells
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= bash

MAINTAINER=	ports@openbsd.org

# invoke make with STATIC=yes to build a static binary
.if defined(STATIC) && ${STATIC:U} == YES
MAKE_ENV=	CPP_DEFINES="-DSYSDEP_LDFLAGS=-static"
PKGNAME=        ${DISTNAME}-static
.endif

post-install:
	@install-info ${PREFIX}/info/bash.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>

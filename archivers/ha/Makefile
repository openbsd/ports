# $OpenBSD: Makefile,v 1.4 1999/09/06 17:46:39 brad Exp $

DISTNAME=       ha0999
PKGNAME=        ha-0.999b
CATEGORIES=	archivers
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tgz

MAINTAINER=     angelos@openbsd.org

USE_GMAKE=      yes

NO_WRKSUBDIR=   yes
MAKEFILE=       makefile.nix
MAKE_FLAGS=     CC=${CC} -f
ALL_TARGET=     ha

do-install:
	@cd ${WRKSRC}; ${INSTALL} ${INSTALL_COPY} ${INSTALL_STRIP} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} ha ${PREFIX}/bin

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 1998/10/09 00:24:55 marc Exp $
#

DISTNAME=       ha0999
PKGNAME=        ha-0.999b
CATEGORIES=	archivers

MAINTAINER=     angelos@openbsd.org

MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tgz

NO_WRKSUBDIR=   yes
MAKEFILE=       makefile.nix
MAKE_FLAGS=     CC=cc -f
ALL_TARGET=     ha
USE_GMAKE=      yes

do-install:
	cd ${WRKSRC}; ${INSTALL} ${COPY} ${STRIP} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} ha ${PREFIX}/bin

.include <bsd.port.mk>

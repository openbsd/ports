# OpenBSD makefile for:    es
# Version required:     0.9a1
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.9 2000/03/26 00:36:15 espie Exp $
#

DISTNAME=       es-0.9-alpha1
PKGNAME=	es-0.9a1
CATEGORIES=	shells
NEED_VERSION=	1.233
MASTER_SITES=   ftp://ftp.sys.toronto.edu/pub/es/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=		es

MAKE_FLAGS=CFLAGS='${CFLAGS}'
FAKE=			Yes

do-install:
	$(INSTALL_PROGRAM) ${WRKBUILD}/es $(PREFIX)/bin
	$(INSTALL_SCRIPT) ${WRKBUILD}/esdebug $(PREFIX)/bin/esdebug
	$(INSTALL_MAN) ${WRKBUILD}/es.1 $(PREFIX)/man/man1

.include <bsd.port.mk>

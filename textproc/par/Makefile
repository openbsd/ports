# OpenBSD makefile for:	Par
# Version required:     1.50
# Date created:         May 17 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 2000/10/05 09:28:28 kevlo Exp $
#

DISTNAME=       Par151
PKGNAME=        par-1.51
CATEGORIES=	textproc
NEED_VERSION=	1.338
MASTER_SITES=   http://www.cs.berkeley.edu/~amc/Par/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=

do-configure:
	(cd ${WRKSRC}; cp protoMakefile Makefile)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/par.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

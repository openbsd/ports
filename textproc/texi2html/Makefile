# OpenBSD makefile for:	texi2html
# Version required:	1.52
# Date created:		May 17 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/17 05:03:32 angelos Exp $
#

DISTNAME=	texi2html
PKGNAME=	texi2html-1.52
CATEGORIES=	textproc
MASTER_SITES=	http://wwwcn.cern.ch/dci/texi2html/ \
		ftp://ftp.scc.ru/pub/unix/
EXTRACT_SUFX=	.shar.Z

MAINTAINER=	angelos@openbsd.org

EXTRACT_CMD=	uncompress
EXTRACT_BEFORE_ARGS=	-c
EXTRACT_AFTER_ARGS=	| sh
NO_WRKSUBDIR=	yes
NO_CONFIGURE=	yes
NO_BUILD=	yes

MAN1=		texi2html.1

post-extract:
	@cd ${WRKSRC}; split -l 1881 texi2html texi2html.

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/texi2html.aa ${PREFIX}/bin/texi2html
	${INSTALL_MAN} ${WRKDIR}/texi2html.ab ${PREFIX}/man/man1/${MAN1}

.include <bsd.port.mk>

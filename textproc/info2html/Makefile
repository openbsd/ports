# OpenBSD makefile for: info2html
# Version required:     1.1
# Date created:         May 21 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1999/11/04 05:58:17 kevlo Exp $
#

DISTNAME=       info2html-1.1
CATEGORIES=	textproc
MASTER_SITES=   http://www.freebsd.org/~wosch/src/

MAINTAINER=     angelos@openbsd.org

post-install:
	${INSTALL_MAN} ${WRKSRC}/info2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

# OpenBSD makefile for: info2html
# Version required:     1.1
# Date created:         May 21 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 2000/02/15 05:05:20 turan Exp $
#

DISTNAME=       info2html-1.1
CATEGORIES=	textproc
MASTER_SITES=   http://www.freebsd.org/~wosch/src/

MAINTAINER=     angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

post-install:
	${INSTALL_MAN} ${WRKSRC}/info2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

# OpenBSD makefile for:    scsh
# Version required:     0.5.1
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.10 2000/10/22 15:43:28 espie Exp $
#

DISTNAME=	scsh-0.5.1
CATEGORIES=	shells lang
NEED_VERSION=	1.305

MASTER_SITES=	ftp://ftp-swiss.ai.mit.edu/pub/su/scsh/
STRIP=

MAINTAINER= 	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"required to notify authors"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"required to notify authors"
PERMIT_DISTFILES_FTP=	Yes


CONFIGURE_STYLE=	gnu dest
ALL_TARGET=	enough
MAN1=		scsh.1

post-install:
	cd ${WRKSRC} && \
	 ${INSTALL_DATA} README RELEASE NEWS COPYING ${PREFIX}/lib/scsh/doc
	rm -f ${PREFIX}/share/doc/scsh
	ln -fs ${TRUEPREFIX}/lib/scsh/doc ${PREFIX}/share/doc/scsh

.include <bsd.port.mk>

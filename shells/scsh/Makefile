# OpenBSD makefile for:    scsh
# Version required:     0.5.1
# Date created:         17 November 1997
# Whom:                 gene
#
# $OpenBSD: Makefile,v 1.9 2000/03/26 01:10:38 espie Exp $
#

DISTNAME=	scsh-0.5.1
CATEGORIES=	shells lang
NEED_VERSION=	1.233

MASTER_SITES=	ftp://ftp-swiss.ai.mit.edu/pub/su/scsh/
STRIP=

MAINTAINER= 	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"required to notify authors"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"required to notify authors"
PERMIT_DISTFILES_FTP=	Yes


HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
ALL_TARGET=	enough
FAKE=		Yes
MAN1=		scsh.1

post-install:
	cd ${WRKSRC} && \
	 ${INSTALL_DATA} README RELEASE NEWS COPYING ${PREFIX}/lib/scsh/doc
	rm -f ${PREFIX}/share/doc/scsh
	ln -fs ${TRUEPREFIX}/lib/scsh/doc ${PREFIX}/share/doc/scsh

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.12 2001/05/06 03:49:22 lebel Exp $

COMMENT=	"Unix shell embedded into Scheme"

DISTNAME=	scsh-0.5.1
CATEGORIES=	shells lang
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp-swiss.ai.mit.edu/pub/su/scsh/

MAINTAINER= 	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"required to notify authors"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"required to notify authors"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

ALL_TARGET=	enough

STRIP=

DOCS=	README RELEASE NEWS COPYING

post-install:
	cd ${WRKSRC} && \
		${INSTALL_DATA} ${DOCS} ${PREFIX}/lib/scsh/doc
	@rm -f ${PREFIX}/share/doc/scsh
	@ln -fs ${TRUEPREFIX}/lib/scsh/doc ${PREFIX}/share/doc/scsh

.include <bsd.port.mk>

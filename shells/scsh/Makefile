# $OpenBSD: Makefile,v 1.19 2002/07/07 05:59:35 pvalchev Exp $

COMMENT=		"Unix shell embedded in Scheme"

DISTNAME=		scsh-0.6.2
CATEGORIES=		lang shells

HOMEPAGE=		http://www.scsh.net/

MAINTAINER=		David Simas <davids@idiom.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		ftp://ftp.scsh.net/pub/scsh/0.6/ \
			${MASTER_SITE_SOURCEFORGE:=scsh/}

CONFIGURE_STYLE=	gnu dest	

ALL_TARGET=		enough

DOCS=			COPYING RELEASE README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/scsh/emacs
	${INSTALL_DATA} ${WRKSRC}/emacs/* ${PREFIX}/share/scsh/emacs
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/scsh

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.21 2006/08/01 14:25:30 alek Exp $

COMMENT=		"Unix shell embedded in Scheme"

DISTNAME=		scsh-0.6.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		lang shells

HOMEPAGE=		http://www.scsh.net/

MAINTAINER=		David Simas <davids@idiom.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c m 

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

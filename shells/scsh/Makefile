# $OpenBSD: Makefile,v 1.22 2007/02/04 15:54:19 steven Exp $

NOT_FOR_ARCHS=		${LP64_ARCHS}

COMMENT=		"Unix shell embedded in Scheme"

DISTNAME=		scsh-0.6.7
CATEGORIES=		lang shells

HOMEPAGE=		http://www.scsh.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c m util

MASTER_SITES=		ftp://ftp.scsh.net/pub/scsh/0.6/ \
			${MASTER_SITE_SOURCEFORGE:=scsh/}

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf

ALL_TARGET=		enough

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/scsh/emacs
	${INSTALL_DATA} ${WRKSRC}/emacs/* ${PREFIX}/share/scsh/emacs/
	@mv ${PREFIX}/lib/scsh/doc ${PREFIX}/share/doc/scsh
	@mv ${PREFIX}/lib/scsh/*/ ${PREFIX}/share/scsh/

.include <bsd.port.mk>

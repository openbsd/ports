# $OpenBSD: Makefile,v 1.17 2002/03/04 05:27:01 brad Exp $

COMMENT=		"Unix shell embedded in Scheme"

DISTNAME=		scsh-0.6.1
CATEGORIES=		lang shells
NEED_VERSION=		1.506

HOMEPAGE=		http://www.scsh.net/

MAINTAINER=		David Simas <davids@idiom.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.scsh.net/pub/scsh/0.6/ \
			${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	scsh

CONFIGURE_STYLE=	gnu dest	

ALL_TARGET=		enough

DOCS=			COPYING RELEASE README

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/scsh/emacs
	${INSTALL_DATA} ${WRKSRC}/emacs/* ${PREFIX}/share/scsh/emacs
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/scsh

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.16 2002/03/04 00:24:58 naddy Exp $

COMMENT=		"Unix shell embedded in Scheme"

DISTNAME=		scsh-0.6.1
CATEGORIES=		lang shell
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/scsh/emacs
	${INSTALL_DATA} ${WRKSRC}/emacs/* ${PREFIX}/share/scsh/emacs
	${INSTALL_DATA} ${WRKSRC}/COPYING ${WRKSRC}/RELEASE ${WRKSRC}/README \
		${PREFIX}/share/doc/scsh

.include <bsd.port.mk>

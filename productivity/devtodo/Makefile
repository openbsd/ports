# $OpenBSD: Makefile,v 1.3 2002/12/23 04:57:47 margarida Exp $

COMMENT=		"a reminder/task program aimed at developers"

VERSION=		0.1.16
DISTNAME=		devtodo-${VERSION}
CATEGORIES=		productivity devel

HOMEPAGE=		http://devtodo.sourceforge.net/

MASTER_SITES=		http://devtodo.sourceforge.net/?0.1.16/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

EXAMPLES=		doc/scripts.* doc/todorc.example contrib/*
DOCS=			README QuickStart 

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/devtodo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/devtodo
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} \
  	  ${PREFIX}/share/doc/devtodo
	cd ${WRKSRC} && ${INSTALL_DATA} ${EXAMPLES} \
	  ${PREFIX}/share/examples/devtodo

.include <bsd.port.mk>

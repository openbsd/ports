# $OpenBSD: Makefile,v 1.9 2004/12/02 21:13:43 alek Exp $

COMMENT=		"reminder/task program aimed at developers"

VERSION=		0.1.17
DISTNAME=		devtodo-${VERSION}
CATEGORIES=		productivity devel

HOMEPAGE=		http://swapoff.org/DevTodo/

MASTER_SITES=		http://swapoff.org/files/devtodo/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses readline stdc++ 

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

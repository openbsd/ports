# $OpenBSD: Makefile,v 1.15 2007/12/17 19:55:48 okan Exp $

COMMENT=		reminder/task program aimed at developers

DISTNAME=		devtodo-0.1.20
CATEGORIES=		productivity devel

HOMEPAGE=		http://swapoff.org/DevTodo/
MASTER_SITES=		http://swapoff.org/files/devtodo/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ncurses readline stdc++ 

USE_LIBTOOL=		Yes
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

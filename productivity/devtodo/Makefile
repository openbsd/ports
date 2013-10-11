# $OpenBSD: Makefile,v 1.22 2013/10/11 23:50:41 naddy Exp $

COMMENT=		reminder/task program aimed at developers

DISTNAME=		devtodo-0.1.20
REVISION=		1
CATEGORIES=		productivity devel

HOMEPAGE=		http://swapoff.org/devtodo1.html

MASTER_SITES=		http://swapoff.org/files/devtodo/ \
			http://spacehopper.org/mirrors/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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

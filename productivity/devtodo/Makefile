# $OpenBSD: Makefile,v 1.20 2013/03/11 11:37:54 espie Exp $

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

USE_LIBTOOL=		Yes
USE_GROFF=		Yes
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

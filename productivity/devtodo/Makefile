# $OpenBSD: Makefile,v 1.31 2019/07/12 20:48:58 sthen Exp $

COMMENT=		reminder/task program aimed at developers

DISTNAME=		devtodo-0.1.20
REVISION =		6
CATEGORIES=		productivity devel

HOMEPAGE=		http://swapoff.org/devtodo1.html

MASTER_SITES=		http://swapoff.org/files/devtodo/ \
			https://spacehopper.org/mirrors/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c m curses readline ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

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

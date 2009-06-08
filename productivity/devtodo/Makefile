# $OpenBSD: Makefile,v 1.16 2009/06/08 14:57:37 sthen Exp $

COMMENT=		reminder/task program aimed at developers

DISTNAME=		devtodo-0.1.20
PKGNAME=		${DISTNAME}p0
CATEGORIES=		productivity devel

HOMEPAGE=		http://swapoff.org/DevTodo/

MASTER_SITES=		http://swapoff.org/files/devtodo/ \
			http://spacehopper.org/mirrors/

# GPLv2
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

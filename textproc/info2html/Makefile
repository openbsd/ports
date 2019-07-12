# $OpenBSD: Makefile,v 1.21 2019/07/12 20:50:00 sthen Exp $

COMMENT=	translate GNU info files into HTML pages

DISTNAME=	info2html-1.1
CATEGORIES=	textproc
MASTER_SITES=	https://people.freebsd.org/~wosch/src/

# public domain
PERMIT_PACKAGE=	Yes
FAKE_FLAGS=		PREFIX=${PREFIX}

post-install:
	${INSTALL_MAN} ${WRKSRC}/info2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

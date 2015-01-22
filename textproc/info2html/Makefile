# $OpenBSD: Makefile,v 1.20 2015/01/22 17:47:52 naddy Exp $

COMMENT=	translate GNU info files into HTML pages

DISTNAME=	info2html-1.1
CATEGORIES=	textproc
MASTER_SITES=	https://people.freebsd.org/~wosch/src/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
FAKE_FLAGS=		PREFIX=${PREFIX}

post-install:
	${INSTALL_MAN} ${WRKSRC}/info2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

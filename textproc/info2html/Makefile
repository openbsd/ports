# $OpenBSD: Makefile,v 1.18 2013/03/11 11:42:42 espie Exp $

COMMENT=	translate GNU info files into HTML pages

DISTNAME=	info2html-1.1
CATEGORIES=	textproc
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
FAKE_FLAGS=		PREFIX=${PREFIX}
USE_GROFF =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/info2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

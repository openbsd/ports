# $OpenBSD: Makefile,v 1.14 2003/11/15 15:12:53 sturm Exp $

COMMENT=	"translate GNU info files into HTML pages"

DISTNAME=	info2html-1.1
CATEGORIES=	textproc
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE_FLAGS=		PREFIX=${PREFIX}

post-install:
	${INSTALL_MAN} ${WRKSRC}/info2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

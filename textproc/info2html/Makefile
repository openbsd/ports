# $OpenBSD: Makefile,v 1.12 2002/03/21 21:25:53 espie Exp $

COMMENT=	"translate GNU info files into HTML pages"

DISTNAME=	info2html-1.1
CATEGORIES=	textproc
MASTER_SITES=	http://people.freebsd.org/~wosch/src/
NEED_VERSION=	1.515

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE_FLAGS=		PREFIX=${PREFIX}

post-install:
	${INSTALL_MAN} ${WRKSRC}/info2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

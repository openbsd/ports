# $OpenBSD: Makefile,v 1.9 2000/10/22 14:03:50 espie Exp $

DISTNAME=	info2html-1.1
CATEGORIES=	textproc
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes
FAKE_FLAGS=		PREFIX=${PREFIX}

post-install:
	${INSTALL_MAN} ${WRKSRC}/info2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

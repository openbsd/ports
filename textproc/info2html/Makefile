# $OpenBSD: Makefile,v 1.7 2000/04/09 17:38:25 espie Exp $

DISTNAME=	info2html-1.1
CATEGORIES=	textproc
FAKE=No
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

MAINTAINER=     angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/info2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

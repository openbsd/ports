# $OpenBSD: Makefile,v 1.6 2000/03/31 19:07:49 brad Exp $

DISTNAME=	info2html-1.1
CATEGORIES=	textproc
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

MAINTAINER=     angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/info2html.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

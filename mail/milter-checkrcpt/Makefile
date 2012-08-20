# $OpenBSD: Makefile,v 1.2 2012/08/20 20:55:01 okan Exp $

COMMENT=	sendmail milter plugin for recipient checking

DISTNAME=	milter-checkrcpt-0.3
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/milter-checkrcpt.html

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pthread milter

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-checkrcpt ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-checkrcpt.8 ${PREFIX}/man/man8

.include <bsd.port.mk>

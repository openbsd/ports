# $OpenBSD: Makefile,v 1.2 2002/10/27 21:07:53 naddy Exp $

COMMENT=	"terminal locking utility"

DISTNAME=	gone-1.3.2a
CATEGORIES=	misc 

HOMEPAGE=	http://jaguar.ir.miami.edu/~marcus/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	with_setuid="no"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/gone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

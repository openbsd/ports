# $OpenBSD: Makefile,v 1.3 2003/06/20 08:05:14 kevlo Exp $

COMMENT=	"terminal locking utility"

DISTNAME=	gone-1.3.4
CATEGORIES=	misc 

HOMEPAGE=	http://www.marcuscom.com/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}/downloads/

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	with_setuid="no"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/gone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2003/01/24 21:07:05 lebel Exp $

COMMENT=	"spam relay database"

DISTNAME=	relaydb-1.0
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/relaydb.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/relaydb ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/relaydb.8 ${PREFIX}/man/man8

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.14 2003/11/15 15:12:55 sturm Exp $

COMMENT=	"validating namespace-aware XML parser"

DISTNAME=	rxp-1.2.3
CATEGORIES=	textproc

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.cogsci.ed.ac.uk/~richard/rxp.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cogsci.ed.ac.uk/pub/richard/

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rxp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rxp.1 ${PREFIX}/man/man1/rxp.1

.include <bsd.port.mk>

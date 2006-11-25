# $OpenBSD: Makefile,v 1.18 2006/11/25 12:45:13 espie Exp $

COMMENT=	"validating namespace-aware XML parser"

DISTNAME=	rxp-1.4.8
CATEGORIES=	textproc

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.cogsci.ed.ac.uk/~richard/rxp.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=	ftp://quatramaran.ens.fr/pub/espie/

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rxp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rxp.1 ${PREFIX}/man/man1/rxp.1

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2001/04/05 17:03:23 naddy Exp $

COMMENT=	"web-based java ssh client"

DISTNAME=	mindtermbin-v199
PKGNAME=	mindterm-1.9.9
CATEGORIES=	www security
NEED_VERSION=	1.378
MASTER_SITES=	http://www.mindbright.se/download/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.mindbright.se/products/mindterm/

MAINTAINER=	Pete Fritchman <petef@databits.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PREFIX?=	/var/www

NO_CONFIGURE=	Yes
NO_BUILD=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/htdocs/mindterm
	${INSTALL_DATA} ${WRKSRC}/mindterm_ns.jar ${PREFIX}/htdocs/mindterm
	${INSTALL_DATA} ${WRKSRC}/mindterm_ie.cab ${PREFIX}/htdocs/mindterm
	${INSTALL_DATA} ${WRKSRC}/mindtermfull.jar ${PREFIX}/htdocs/mindterm
	${INSTALL_DATA} ${FILESDIR}/sample-ie.html ${PREFIX}/htdocs/mindterm
	${INSTALL_DATA} ${FILESDIR}/sample-ns.html ${PREFIX}/htdocs/mindterm

.include <bsd.port.mk>

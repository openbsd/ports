# $OpenBSD: Makefile,v 1.4 2001/10/30 15:57:52 danh Exp $

COMMENT=	"web-based java SSH client"

VERSION=	2.1
DISTNAME=	mindterm_${VERSION}-bin
PKGNAME=	mindterm-${VERSION}
CATEGORIES=	www security
NEED_VERSION=	1.475
MASTER_SITES=	http://www.appgate.com/products/mindterm/personal/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.appgate.com/products/mindterm/

MAINTAINER=	Marc Matteo <marcm@lectroid.net>

PERMIT_PACKAGE_CDROM=	"non-commercial use only"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"non-commercial use only"
PERMIT_DISTFILES_FTP=	Yes

PREFIX?=	/var/www/htdocs

NO_BUILD=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/mindterm
	${INSTALL_DATA} ${WRKSRC}/mindterm.jar ${PREFIX}/mindterm/
	${INSTALL_DATA} ${WRKSRC}/mindterm_ns.jar ${PREFIX}/mindterm/
	${INSTALL_DATA} ${WRKSRC}/mindterm_ie.cab ${PREFIX}/mindterm/
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/mindterm/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/mindterm/
	${INSTALL_DATA} ${FILESDIR}/applet.html ${PREFIX}/mindterm/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.15 2013/03/11 11:44:43 espie Exp $

COMMENT=	web-based java SSH client

VERSION=	2.1
DISTNAME=	mindterm_${VERSION}-bin
PKGNAME=	mindterm-${VERSION}
CATEGORIES=	www security
MASTER_SITES=	http://support.appgate.com/mindterm/personal/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.appgate.com/products/5_MindTerm/

# custom
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	may not distribute as part of a commercial product
PERMIT_DISTFILES_FTP=	Yes

PREFIX?=	/var/www/htdocs

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
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

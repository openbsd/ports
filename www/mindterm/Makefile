# $OpenBSD: Makefile,v 1.8 2002/09/19 06:42:00 marcm Exp $

COMMENT=	"web-based java SSH client"

VERSION=	2.1
DISTNAME=	mindterm_${VERSION}-bin
PKGNAME=	mindterm-${VERSION}
CATEGORIES=	www security
MASTER_SITES=	http://support.appgate.com/mindterm/personal/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.appgate.com/ag.asp?template=products&level1=product_mindterm

MAINTAINER=	Marc Matteo <marcm@openbsd.org>

PERMIT_PACKAGE_CDROM=	"non-commercial use only"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"non-commercial use only"
PERMIT_DISTFILES_FTP=	Yes

PREFIX?=	/var/www/htdocs

NO_BUILD=	Yes
NO_REGRESS=	Yes
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

# $OpenBSD: Makefile,v 1.1.1.1 2000/07/23 14:45:03 kevlo Exp $

DISTNAME=	imp1.1b
PKGNAME=	impress-1.1b
CATEGORIES=	misc
NEED_VERSION=	1.319

MASTER_SITES=	http://www.ntlug.org/~ccox/impress/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=    wish8.3::x11/tk/8.3

WRKDIST=        ${WRKDIR}/impress-1.1-beta

NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/impress.tcl ${PREFIX}/bin/impress

.include <bsd.port.mk>

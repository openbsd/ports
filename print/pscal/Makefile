# $OpenBSD: Makefile,v 1.2 2004/02/01 20:40:46 sturm Exp $

COMMENT=	"utility for generating PostScript calendars"

DISTNAME=	pscal-1.15
CATEGORIES=	print

HOMEPAGE=	http://www.panix.com/~mbh/projects.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.panix.com/~mbh/pscal/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pscal
	${INSTALL_SCRIPT} ${WRKSRC}/pscal ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/pscal

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2005/10/31 16:46:46 mbalmer Exp $

COMMENT=	"client application for zope-externaleditor"

VERSION=	0.8
DISTNAME=	zopeedit-${VERSION}-src
PKGNAME=	zopeedit-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/Caseman/ExternalEditor

MAINTAINER=	Marc Winiger <marc.winiger@msys.ch>

# Zope Public License
PERMIT_PACKAGE_FTP= 	Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_DISTFILES_CDROM= Yes

MASTER_SITES=	${HOMEPAGE}/${VERSION}/
EXTRACT_SUFX=	.tgz

PYTHON_VER=	2.3

WRKSRC=		${WRKDIR}/zopeedit-${VERSION}-src

NO_BUILD=	yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/zopeedit.py ${PREFIX}/bin/zopeedit
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zopeedit
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/zopeedit
	${INSTALL_DATA} ${WRKSRC}/man/zopeedit.1 ${PREFIX}/man/man1/zopeedit.1

.include <bsd.port.mk>

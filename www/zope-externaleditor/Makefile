# $OpenBSD: Makefile,v 1.1.1.1 2004/11/21 10:32:15 xsa Exp $

COMMENT=	"Zope product for using an external editor to modify Zope objects"

VERSION=	0.8
DISTNAME=	ExternalEditor-${VERSION}-src
PKGNAME=	zope-externaleditor-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/Caseman/ExternalEditor

MAINTAINER=	Marc Winiger <winiger@msys.ch>

# ZPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/${VERSION}/
EXTRACT_SUFX=	.tgz

MODULES=	zope

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	 cd ${WRKDIR}; \
		tar cf - ExternalEditor | tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>

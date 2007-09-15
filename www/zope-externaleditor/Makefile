# $OpenBSD: Makefile,v 1.4 2007/09/15 20:38:26 merdely Exp $

COMMENT=	Zope product to use an external editor to edit Zope objects

VERSION=	0.9.3
DISTNAME=	ExternalEditor-${VERSION}-src
PKGNAME=	zope-externaleditor-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://plope.com/software/ExternalEditor/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# ZPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

MODULES=	zope

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	 cd ${WRKDIR}; \
		tar cf - ExternalEditor | tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>

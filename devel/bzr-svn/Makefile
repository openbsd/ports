# $OpenBSD: Makefile,v 1.1.1.1 2011/01/10 20:27:52 eric Exp $

COMMENT=	bzr plugin that adds support for foreign svn repositories

MODPY_EGG_VERSION= 1.0.4
DISTNAME=	bzr-svn-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://launchpad.net/bzr-svn

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://launchpad.net/bzr-svn/${MODPY_EGG_VERSION:C/..$//}/${MODPY_EGG_VERSION}/+download/

MODULES=	lang/python
USE_GROFF=	Yes

RUN_DEPENDS=	devel/bzr

.include <bsd.port.mk>

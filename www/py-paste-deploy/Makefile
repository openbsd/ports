# $OpenBSD: Makefile,v 1.6 2008/07/11 00:25:12 martynas Exp $

COMMENT=		load, configure, and compose WSGI applications and servers

MODPY_EGG_VERSION=	1.3.2
DISTNAME=		PasteDeploy-${MODPY_EGG_VERSION}
PKGNAME=		py-paste-deploy-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://pythonpaste.org/deploy/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/P/PasteDeploy/

MODULES=		lang/python
RUN_DEPENDS=		::www/py-paste
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::devel/py-py

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paste-deploy
	cd ${WRKSRC}/docs && pax -rw * $ ${PREFIX}/share/doc/py-paste-deploy/

do-regress:
	cd ${WRKSRC} && py.test .

.include <bsd.port.mk>

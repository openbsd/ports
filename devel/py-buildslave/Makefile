# $OpenBSD: Makefile,v 1.3 2011/04/24 19:15:13 ajacoutot Exp $

COMMENT=	buildslave implementation for the buildot system

MODPY_EGG_VERSION=	0.8.3
DISTNAME=	buildbot-slave-${MODPY_EGG_VERSION}
PKGNAME=	py-buildslave-${MODPY_EGG_VERSION}

REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	http://buildbot.net/

MAINTAINER=	Piotr Sikora <piotr.sikora@frickle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	http://buildbot.googlecode.com/files/

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	devel/py-twisted/core

REGRESS_DEPENDS=	${RUN_DEPENDS} \
			devel/py-mock

HOMEDIR =	/var/buildslave

SUBST_VARS +=	HOMEDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-buildslave
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-buildslave

do-regress:
	@${MAKE_ENV} PYTHONPATH=${WRKSRC} \
	    ${LOCALBASE}/bin/trial --temp-directory=${WRKBUILD}/regress \
	    buildslave.test

.include <bsd.port.mk>

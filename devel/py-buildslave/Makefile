# $OpenBSD: Makefile,v 1.1.1.1 2010/11/30 10:59:01 eric Exp $

COMMENT=	buildslave implementation for the buildot system

MODPY_EGG_VERSION=	0.8.2
DISTNAME=	buildbot-slave-${MODPY_EGG_VERSION}
PKGNAME=	py-buildslave-${MODPY_EGG_VERSION}

CATEGORIES=   	devel

HOMEPAGE=	http://buildbot.net/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=buildbot/}

MODULES=	lang/python

RUN_DEPENDS=	devel/py-twisted/core \
		devel/py-twisted/conch \
		devel/py-twisted/mail \
		devel/py-twisted/web \
		devel/py-twisted/words

REGRESS_DEPENDS=	${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-buildslave
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-buildslave

do-regress:
	@${MAKE_ENV} PYTHONPATH=${WRKSRC} \
	    ${LOCALBASE}/bin/trial --temp-directory=${WRKBUILD}/regress \
	    buildslave.test

.include <bsd.port.mk>

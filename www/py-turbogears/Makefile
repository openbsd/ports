# $OpenBSD: Makefile,v 1.11 2009/03/28 18:12:49 naddy Exp $

COMMENT=		Python web development megaframework

MODPY_EGG_VERSION=	1.0.7
DISTNAME=		TurboGears-${MODPY_EGG_VERSION}
PKGNAME=		py-turbogears-${MODPY_EGG_VERSION}p0

CATEGORIES=		www

HOMEPAGE=		http://www.turbogears.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://files.turbogears.org/eggs/
EXTRACT_SUFX=		.zip

MODULES=		lang/python

RUN_DEPENDS=		::databases/py-sqlalchemy \
			::databases/py-sqlobject \
			::devel/py-cheetah \
			::devel/py-configobj \
			::devel/py-nose \
			::devel/py-protocols \
			::devel/py-ruledispatch \
			::devel/py-simplejson \
			::devel/py-turbocheetah \
			::devel/py-turbojson \
			::devel/py-turbokid \
			::www/py-cherrypy2 \
			::www/py-formencode \
			::www/py-paste \
			::www/py-paste-deploy \
			::www/py-paste-script
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::databases/py-sqlite2

MODPY_SETUPTOOLS=	Yes

post-extract:
	find ${WRKSRC} -perm 0666 -exec chmod 0644 {} \;

.include <bsd.port.mk>

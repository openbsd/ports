# $OpenBSD: Makefile,v 1.7 2008/03/19 13:02:59 winiger Exp $

COMMENT=		Python web development megaframework

VERSION=		1.0.4.2
DISTNAME=		TurboGears-${VERSION}
PKGNAME=		py-turbogears-${VERSION}p0

CATEGORIES=		www

HOMEPAGE=		http://www.turbogears.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://files.turbogears.org/eggs/

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

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>

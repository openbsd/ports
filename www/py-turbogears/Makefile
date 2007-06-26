# $OpenBSD: Makefile,v 1.1.1.1 2007/06/26 23:23:40 martynas Exp $

COMMENT=		"Python web development megaframework"

V=			1.0.2.2
DISTNAME=		TurboGears-${V}
PKGNAME=		py-turbogears-${V}

CATEGORIES=		www lang/python

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
			::textproc/py-ElementTree \
			::textproc/py-cElementTree \
			::www/py-cherrypy2 \
			::www/py-formencode \
			::www/py-paste \
			::www/py-paste-deploy \
			::www/py-paste-script
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::databases/py-sqlite2

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>

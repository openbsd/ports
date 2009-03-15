# $OpenBSD: Makefile,v 1.8 2009/03/15 13:03:42 espie Exp $

COMMENT=		template plugin for TurboGears that supports json

MODPY_EGG_VERSION=	1.1.4
DISTNAME=		TurboJson-${MODPY_EGG_VERSION}
PKGNAME=		py-turbojson-${MODPY_EGG_VERSION}p0

CATEGORIES=		devel

HOMEPAGE=		http://www.turbogears.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pypi.python.org/packages/source/T/TurboJson/

MODULES=		lang/python
RUN_DEPENDS=		::databases/py-sqlobject \
			::devel/py-ruledispatch \
			::devel/py-simplejson
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::devel/py-nose

MODPY_SETUPTOOLS=	Yes

do-regress:
	cd ${WRKSRC}/lib && nosetests
	cd ${WRKSRC}/turbojson && nosetests

.include <bsd.port.mk>

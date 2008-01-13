# $OpenBSD: Makefile,v 1.5 2008/01/13 17:23:17 martynas Exp $

COMMENT=		template plugin for TurboGears that supports json

VERSION=		1.1.1
DISTNAME=		TurboJson-${VERSION}
PKGNAME=		py-turbojson-${VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://www.turbogears.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://files.turbogears.org/eggs/

MODULES=		lang/python
RUN_DEPENDS=		::databases/py-sqlobject \
			::devel/py-ruledispatch \
			::devel/py-simplejson
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::devel/py-nose

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

do-regress:
	cd ${WRKSRC}/lib && nosetests
	cd ${WRKSRC}/turbojson && nosetests

.include <bsd.port.mk>

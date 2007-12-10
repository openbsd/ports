# $OpenBSD: Makefile,v 1.4 2007/12/10 21:07:51 martynas Exp $

COMMENT=		template plugin for TurboGears that supports json

V=			1.0
DISTNAME=		TurboJson-${V}
PKGNAME=		py-turbojson-${V}p0

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

MODPY_SETUPTOOLS=	Yes

do-regress:
	cd ${WRKSRC}/lib && nosetests
	cd ${WRKSRC}/turbojson && nosetests

.include <bsd.port.mk>

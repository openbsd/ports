# $OpenBSD: Makefile,v 1.1.1.1 2007/06/24 21:51:30 martynas Exp $

COMMENT=		"JSON encoder/decoder"

DISTNAME=		simplejson-1.7.1
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel lang/python

HOMEPAGE=		http://undefined.org/python/\#simplejson

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/s/simplejson/

MODULES=		lang/python
REGRESS_DEPENDS=	::devel/py-nose

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-simplejson
	cd ${WRKSRC}/docs && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-simplejson/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/py-simplejson/{} \;

.include <bsd.port.mk>

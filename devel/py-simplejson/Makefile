# $OpenBSD: Makefile,v 1.8 2008/10/08 21:06:44 martynas Exp $

COMMENT=		JSON encoder/decoder

MODPY_EGG_VERSION=	1.9.3
DISTNAME=		simplejson-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

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

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} -c \
		'import simplejson.tests; simplejson.tests.main()'

.include <bsd.port.mk>

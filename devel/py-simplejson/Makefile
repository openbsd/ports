# $OpenBSD: Makefile,v 1.10 2009/03/11 21:47:13 bernd Exp $

COMMENT=		JSON encoder/decoder

MODPY_EGG_VERSION=	2.0.7
DISTNAME=		simplejson-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}p0

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

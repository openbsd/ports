# $OpenBSD: Makefile,v 1.8 2016/11/01 15:27:24 sthen Exp $

COMMENT=	monitor webpages for updates

MODPY_EGG_VERSION=	2.5
DISTNAME=	urlwatch-${MODPY_EGG_VERSION}

CATEGORIES=	www

HOMEPAGE=	http://thp.io/2008/urlwatch/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=       Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/py-html2text${MODPY_FLAVOR} \
		databases/py-minidb \
		security/py-keyring${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/lynx \
		www/py-requests${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	mv ${PREFIX}/share/urlwatch/examples ${PREFIX}/share/examples/urlwatch
	rmdir ${PREFIX}/share/{man,urlwatch}

do-test:
	cd ${WRKSRC}; nosetests${MODPY_BIN_SUFFIX} -v

.include <bsd.port.mk>

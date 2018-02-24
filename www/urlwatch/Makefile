# $OpenBSD: Makefile,v 1.12 2018/02/24 19:02:57 bket Exp $

COMMENT=	monitor webpages for updates

MODPY_EGG_VERSION=	2.8
DISTNAME=	urlwatch-${MODPY_EGG_VERSION}

CATEGORIES=	www

HOMEPAGE=	https://thp.io/2008/urlwatch/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

MODPY_PI =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS=       Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/py-html2text${MODPY_FLAVOR} \
		databases/py-minidb \
		devel/py-appdirs${MODPY_FLAVOR} \
		security/py-keyring${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/lynx \
		www/py-requests${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-codestyle${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	mv ${PREFIX}/share/urlwatch/examples ${PREFIX}/share/examples/urlwatch
	rmdir ${PREFIX}/share/{man,urlwatch}

do-test:
	cd ${WRKSRC}; nosetests${MODPY_BIN_SUFFIX} -v

.include <bsd.port.mk>

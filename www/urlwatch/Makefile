# $OpenBSD: Makefile,v 1.26 2020/02/29 16:03:38 sthen Exp $

COMMENT=	monitor webpages for updates

MODPY_EGG_VERSION=	2.17
DISTNAME=	urlwatch-${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	www

HOMEPAGE=	https://thp.io/2008/urlwatch/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS= Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/py-html2text${MODPY_FLAVOR} \
		databases/py-minidb${MODPY_FLAVOR} \
		devel/py-appdirs${MODPY_FLAVOR} \
		security/py-keyring${MODPY_FLAVOR} \
		textproc/py-cssselect${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/lynx \
		www/py-requests${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-codestyle${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	mv ${PREFIX}/share/urlwatch/examples ${PREFIX}/share/examples/urlwatch
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/urlwatch/config.py.orig
	rmdir ${PREFIX}/share/{man,urlwatch}

do-test:
	cd ${WRKSRC}; nosetests${MODPY_BIN_SUFFIX} -v

.include <bsd.port.mk>

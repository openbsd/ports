COMMENT=	monitor webpages for updates

MODPY_EGG_VERSION=	2.29
DISTNAME=	urlwatch-${MODPY_EGG_VERSION}

CATEGORIES=	www

HOMEPAGE=	https://thp.io/2008/urlwatch/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	${RUN_DEPENDS}
m['install_requires'] = ['minidb>=2.0.8', 'PyYAML', 'requests', 'keyring', 'platformdirs', 'lxml', 'cssselect']

RUN_DEPENDS=	databases/py-minidb${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		security/py-keyring${MODPY_FLAVOR} \
		sysutils/py-platformdirs${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-cssselect${MODPY_FLAVOR}

# optional but useful
RUN_DEPENDS+=	converters/py-html2text${MODPY_FLAVOR} \
		textproc/py-vobject${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-codestyle${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	mv ${PREFIX}/share/urlwatch/examples ${PREFIX}/share/examples/urlwatch
	rmdir ${PREFIX}/share/{man,urlwatch}

.include <bsd.port.mk>

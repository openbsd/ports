COMMENT=	monitor webpages for updates

MODPY_DISTV=	2.29
DISTNAME=	urlwatch-${MODPY_DISTV}
REVISION=	0

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

RUN_DEPENDS=	databases/py-minidb \
		textproc/py-yaml \
		www/py-requests \
		security/py-keyring \
		sysutils/py-platformdirs \
		textproc/py-lxml \
		textproc/py-cssselect

# optional but useful
RUN_DEPENDS+=	converters/py-html2text \
		textproc/py-vobject

TEST_DEPENDS=	devel/py-codestyle

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	mv ${PREFIX}/share/urlwatch/examples ${PREFIX}/share/examples/urlwatch
	rmdir ${PREFIX}/share/{man,urlwatch}

.include <bsd.port.mk>

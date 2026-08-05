COMMENT=	usable configuration management

VERSION=	20260805

DISTNAME=		cdist-${VERSION}

CATEGORIES=		sysutils

HOMEPAGE=	https://www.cdi.st/
SITES=		https://nerd.hu/distfiles/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

pre-configure:
	grep '^[[:digit:]]' ${WRKSRC}/docs/changelog | head -n1 | \
		sed -n 's/\(.*\):/VERSION = \"\1\"/p' > ${WRKSRC}/cdist/version.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -R ${WRKSRC}/configuration ${PREFIX}/share/examples/cdist

.include <bsd.port.mk>

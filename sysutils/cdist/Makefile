COMMENT=	usable configuration management

VERSION=	20250225
REVISION=	2

DISTNAME=		cdist-${VERSION}

CATEGORIES=		sysutils

HOMEPAGE=	https://www.cdi.st/
SITES=		https://nerd.hu/distfiles/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -R ${WRKSRC}/configuration ${PREFIX}/share/examples/cdist

.include <bsd.port.mk>

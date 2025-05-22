COMMENT=	usable configuration management

VERSION=	20250225

MODPY_SETUPTOOLS=	Yes
DISTNAME=		cdist-${VERSION}

CATEGORIES=		sysutils

HOMEPAGE=	https://www.cdi.st/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -R ${WRKSRC}/configuration ${PREFIX}/share/examples/cdist

.include <bsd.port.mk>

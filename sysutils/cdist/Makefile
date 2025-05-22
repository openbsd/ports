COMMENT=	usable configuration management

VERSION=	20250225
REVISION=	0

DISTNAME=		cdist-${VERSION}

CATEGORIES=		sysutils

HOMEPAGE=	https://www.cdi.st/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -R ${WRKSRC}/configuration ${PREFIX}/share/examples/cdist

.include <bsd.port.mk>

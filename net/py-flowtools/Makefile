# $OpenBSD: Makefile,v 1.15 2013/08/07 21:32:24 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	python interface to flow-tools file format

MODPY_EGG_VERSION=0.3.4
DISTNAME=	pyflowtools-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/pyflow/py-flow/g}
REVISION=	4
CATEGORIES=	net

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	z ft

HOMEPAGE=	https://code.google.com/p/pyflowtools/
MASTER_SITES=	https://pyflowtools.googlecode.com/files/

LIB_DEPENDS=	net/flow-tools
MODULES=	lang/python

NO_TEST= 	Yes

MODPY_DISTUTILS_BUILD=	build_ext
MODPY_DISTUTILS_BUILDARGS=-I${LOCALBASE}/include -L${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-flowtools
	${INSTALL_DATA} ${WRKSRC}/example.py \
		${PREFIX}/share/examples/py-flowtools
	${INSTALL_SCRIPT} ${WRKSRC}/flowprint-full ${PREFIX}/bin

.include <bsd.port.mk>

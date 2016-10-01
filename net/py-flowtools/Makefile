# $OpenBSD: Makefile,v 1.18 2016/10/01 11:54:16 naddy Exp $

COMMENT=	python interface to flow-tools file format

MODPY_EGG_VERSION=0.3.4
DISTNAME=	pyflowtools-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/pyflow/py-flow/g}
REVISION=	5
CATEGORIES=	net

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	z ft ${MODPY_WANTLIB} pthread

HOMEPAGE=	https://code.google.com/p/pyflowtools/
MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=pyflowtools/}

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

# $OpenBSD: Makefile,v 1.8 2010/08/30 21:21:53 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	python interface to flow-tools file format

MODPY_EGG_VERSION=0.3.4
DISTNAME=	pyflowtools-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/pyflow/py-flow/g}
REVISION=	0
CATEGORIES=	net

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	z

HOMEPAGE=	http://code.google.com/p/pyflowtools/
MASTER_SITES=	http://pyflowtools.googlecode.com/files/

LIB_DEPENDS=	ft::net/flow-tools
MODULES=	lang/python

NO_REGRESS= 	Yes

MODPY_DISTUTILS_BUILD=	build_ext
MODPY_DISTUTILS_BUILDARGS=-I${LOCALBASE}/include -L${LOCALBASE}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-flowtools
	${INSTALL_DATA} ${WRKSRC}/example.py \
		${PREFIX}/share/examples/py-flowtools
	${INSTALL_SCRIPT} ${WRKSRC}/flowprint-full ${PREFIX}/bin

.include <bsd.port.mk>

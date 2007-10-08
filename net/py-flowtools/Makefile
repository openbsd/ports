# $OpenBSD: Makefile,v 1.5 2007/10/08 08:22:42 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	python interface to flow-tools file format

DISTNAME=	pyflowtools-0.3
PKGNAME=	${DISTNAME:S/pyflow/py-flow/g}p2
CATEGORIES=	net

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://mail.net.informatik.tu-muenchen.de/~robin/flowtools/

BUILD_DEPENDS=	::net/flow-tools
MODULES=	lang/python

NO_REGRESS= 	Yes

MODPY_DISTUTILS_BUILD=	build_ext
MODPY_DISTUTILS_BUILDARGS=-I${LOCALBASE}/include -L${LOCALBASE}/lib
WANTLIB+=	z

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-flowtools
	${INSTALL_DATA} ${WRKSRC}/example.py \
		${PREFIX}/share/examples/py-flowtools
	${INSTALL_SCRIPT} ${WRKSRC}/flowprint-full ${PREFIX}/bin

.include <bsd.port.mk>

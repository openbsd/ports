# $OpenBSD: Makefile,v 1.4 2010/08/30 22:02:33 sthen Exp $

COMMENT=		handle HTML forms on the client side

MODPY_EGG_VERSION=	0.2.10
DISTNAME=		ClientForm-${MODPY_EGG_VERSION}
PKGNAME=		py-clientform-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		www

HOMEPAGE=		http://wwwsearch.sourceforge.net/ClientForm/
MASTER_SITES=		${HOMEPAGE}src/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

# BSD-like or ZPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-clientform
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-clientform
.for i in COPYING.txt COPYRIGHT.txt *.html
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/py-clientform
.endfor
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/py-clientform

.include <bsd.port.mk>

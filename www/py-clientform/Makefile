# $OpenBSD: Makefile,v 1.2 2009/03/25 13:52:31 jasper Exp $

COMMENT=		handle HTML forms on the client side

V=			0.2.7
DISTNAME=		ClientForm-$V
PKGNAME=		py-clientform-$Vp0

CATEGORIES=		www

HOMEPAGE=		http://wwwsearch.sourceforge.net/ClientForm/
MASTER_SITES=		${HOMEPAGE}src/

MAINTAINER=		Will Maier <willmaier@ml1.net>

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

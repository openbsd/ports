# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:55 espie Exp $

COMMENT=		Python framework for async socket-based servers

DISTNAME=		medusa-0.5.4
PKGNAME=		py-${DISTNAME}
REVISION=		4
CATEGORIES=		net devel

HOMEPAGE=		http://www.amk.ca/python/code/medusa.html

MASTER_SITES=		http://www.amk.ca/files/python/

# Python License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

PKG_ARCH=		*

EXAMPLESDIR=		${PREFIX}/share/examples/py-medusa
EXAMPLEDIRS=		demo test thread

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-medusa
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-medusa
.	for i in ${EXAMPLEDIRS}
		${INSTALL_DATA_DIR} ${EXAMPLESDIR}/${i}
		${INSTALL_DATA} ${WRKSRC}/${i}/* ${EXAMPLESDIR}/${i}
.	endfor

.include <bsd.port.mk>

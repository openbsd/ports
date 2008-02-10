# $OpenBSD: Makefile,v 1.2 2008/02/10 14:23:05 okan Exp $

COMMENT=		Python framework for async socket-based servers

DISTNAME=		medusa-0.5.4
PKGNAME=		py-${DISTNAME}p0
CATEGORIES=		net devel

HOMEPAGE=		http://www.amk.ca/python/code/medusa.html

MASTER_SITES=		http://www.amk.ca/files/python/

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python

PKG_ARCH=		*

EXAMPLESDIR=		${PREFIX}/share/examples/py-medusa
EXAMPLEDIRS=		demo test thread

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-medusa
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-medusa
.	for i in ${EXAMPLEDIRS}
		${INSTALL_DATA_DIR} ${EXAMPLESDIR}/${i}
		${INSTALL_DATA} ${WRKSRC}/${i}/* ${EXAMPLESDIR}/${i}
.	endfor

.include <bsd.port.mk>

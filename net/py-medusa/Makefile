# $OpenBSD: Makefile,v 1.1.1.1 2008/02/09 01:10:00 okan Exp $

SHARED_ONLY=		Yes

COMMENT=		Python framework for async socket-based servers

DISTNAME=		medusa-0.5.4
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net devel

HOMEPAGE=		http://www.amk.ca/python/code/medusa.html

MASTER_SITES=		http://www.amk.ca/files/python/

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python

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

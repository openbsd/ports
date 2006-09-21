# $OpenBSD: Makefile,v 1.13 2006/09/21 08:57:02 xsa Exp $

COMMENT=	"Python module that implements the SSH2 protocol"

DISTNAME=	paramiko-1.6.2
PKGNAME=	py-${DISTNAME}
CATEGORIES=	security

HOMEPAGE=	http://www.lag.net/paramiko/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

MODULES=	lang/python

RUN_DEPENDS=	::security/py-crypto

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-paramiko
EXAMPLESDIR=	${PREFIX}/share/examples/py-paramiko

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}/{private,public}
	${INSTALL_DATA} ${WRKSRC}/docs/{index.html,epydoc.css} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/private/* ${DOCSDIR}/private
	${INSTALL_DATA} ${WRKSRC}/docs/public/* ${DOCSDIR}/public
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/demos
	${INSTALL_DATA} ${WRKSRC}/demos/* ${EXAMPLESDIR}/demos

.include <bsd.port.mk>

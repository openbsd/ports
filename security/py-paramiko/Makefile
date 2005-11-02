# $OpenBSD: Makefile,v 1.10 2005/11/02 08:05:30 xsa Exp $

COMMENT=	"Python module that implements the SSH2 protocol"

DISTNAME=	paramiko-1.5.1
PKGNAME=	py-${DISTNAME}
CATEGORIES=	security

HOMEPAGE=	http://www.lag.net/paramiko/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/
EXTRACT_SUFX=	.zip

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
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/{demo*,forward}.py ${EXAMPLESDIR}

.include <bsd.port.mk>

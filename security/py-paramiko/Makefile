# $OpenBSD: Makefile,v 1.2 2004/08/03 21:31:06 xsa Exp $

COMMENT=	"Python module that implements the SSH2 protocol"

V=		0.9
DISTNAME=	paramiko-${V}-horsea
PKGNAME=	py-paramiko-${V}
CATEGORIES=	security

HOMEPAGE=	http://www.lag.net/~robey/paramiko/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
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
	${INSTALL_DATA} ${WRKSRC}/*_key ${EXAMPLESDIR}

.include <bsd.port.mk>

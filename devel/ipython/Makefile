# $OpenBSD: Makefile,v 1.10 2008/06/03 23:30:28 wcmaier Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION=	0.8.4
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ipython.scipy.org/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

MODULES=		lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ipython.scipy.org/dist/

NO_REGRESS=	Yes

RUN_DEPENDS=	::devel/py-pexpect

DOC_DIR=	${PREFIX}/share/doc/ipython
EXAMPLE_DIR=	${PREFIX}/share/examples/ipython

post-extract:
	@cd ${WRKSRC}/doc && gunzip *.1.gz

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	@cd ${WRKSRC}/doc/manual && pax -rw . ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/examples/* ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/ipython.el ${EXAMPLE_DIR}

.include <bsd.port.mk>

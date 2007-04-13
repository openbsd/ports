# $OpenBSD: Makefile,v 1.5 2007/04/13 04:50:17 steven Exp $

COMMENT=	"enhanced interactive Python shell"

DISTNAME=	ipython-0.8.0
CATEGORIES=	devel

HOMEPAGE=	http://ipython.scipy.org/

MAINTAINER=	Will Maier <willmaier@ml1.net>

MODULES=	lang/python

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
	${INSTALL_DATA} ${WRKSRC}/doc/manual/* ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/examples/* ${EXAMPLE_DIR}

.include <bsd.port.mk>

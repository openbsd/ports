# $OpenBSD: Makefile,v 1.17 2011/06/08 17:40:08 jasper Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION=	0.10
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		http://ipython.scipy.org/moin/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

MODULES=		lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ipython.scipy.org/dist/${MODPY_EGG_VERSION}/

USE_GROFF =	Yes
NO_REGRESS=	Yes

post-extract:
	@cd ${WRKSRC}/docs/man && gunzip *.1.gz

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/emacs/ipython.el \
	    ${PREFIX}/share/examples/ipython

.include <bsd.port.mk>

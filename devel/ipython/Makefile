# $OpenBSD: Makefile,v 1.20 2013/03/11 10:50:09 espie Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION=	0.11
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ipython.org/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

MODULES=		lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=i/ipython/}

USE_GROFF =	Yes
NO_TEST=	Yes

post-extract:
	@cd ${WRKSRC}/docs/man && gunzip *.1.gz

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/emacs/ipython.el \
	    ${PREFIX}/share/examples/ipython

.include <bsd.port.mk>

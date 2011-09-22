# $OpenBSD: Makefile,v 1.19 2011/09/22 18:42:14 rpointel Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION=	0.11
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ipython.org/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

MODULES=		lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=i/ipython/}

USE_GROFF =	Yes
NO_REGRESS=	Yes

post-extract:
	@cd ${WRKSRC}/docs/man && gunzip *.1.gz

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/emacs/ipython.el \
	    ${PREFIX}/share/examples/ipython

.include <bsd.port.mk>

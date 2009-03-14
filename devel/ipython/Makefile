# $OpenBSD: Makefile,v 1.12 2009/03/14 23:13:34 espie Exp $

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		ipython-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://ipython.scipy.org/moin/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

MODULES=		lang/python

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ipython.scipy.org/dist/

NO_REGRESS=	Yes

post-extract:
	@cd ${WRKSRC}/docs/man && gunzip *.1.gz

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/emacs/ipython.el \
	    ${PREFIX}/share/examples/ipython

.include <bsd.port.mk>

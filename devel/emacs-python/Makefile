# $OpenBSD: Makefile,v 1.1.1.1 2011/05/22 20:40:46 jasper Exp $

COMMENT=	Emacs mode for editing Python code

V=		5.2.0
DISTNAME=	python-mode-$V
PKGNAME=	emacs-python-$V

CATEGORIES=	devel lang editors

HOMEPAGE=	https://launchpad.net/python-mode

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/trunk/$V/+download/
EXTRACT_SUFX=	.tgz

PKG_ARCH=	*
NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/python-mode/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp/
	${INSTALL_DATA} ${WRKSRC}/*.el ${PREFIX}/share/emacs/site-lisp/
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs-python/
	${INSTALL_DATA} ${WRKSRC}/pycomplete.py ${PREFIX}/share/emacs-python/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2006/12/18 18:15:33 jasper Exp $

COMMENT=		"fully functional X client library for Python programs"

VERSION=		0.13
DISTNAME=		python-xlib-${VERSION}
PKGNAME=		py-Xlib-${VERSION}
CATEGORIES=		python x11

HOMEPAGE=		http://python-xlib.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=python-xlib/}

MODULES=		lang/python

BUILD_DEPENDS=		::textproc/texi2html

USE_X11=		Yes

# Have to find a nice way to run the test scripts
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-Xlib
	@cd ${WRKSRC}/doc/html && ${GMAKE}
	${INSTALL_DATA} ${WRKSRC}/doc/html/*.html ${PREFIX}/share/doc/py-Xlib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-Xlib
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/py-Xlib

.include <bsd.port.mk>

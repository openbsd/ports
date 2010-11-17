# $OpenBSD: Makefile,v 1.10 2010/11/17 19:27:53 jasper Exp $

COMMENT=		fully functional X client library for Python programs

VERSION=		0.14
DISTNAME=		python-xlib-${VERSION}
PKGNAME=		py-Xlib-${VERSION}

CATEGORIES=		x11

HOMEPAGE=		http://python-xlib.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=python-xlib/}

MODULES=		lang/python

BUILD_DEPENDS=		textproc/texi2html

TESTS=			events_be events_le rdb requests_be requests_le

do-regress:
.for t in ${TESTS}
	cd ${WRKSRC}/test && ${MODPY_BIN} test_${t}.py
.endfor
	
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-Xlib
	@cd ${WRKSRC}/doc/html && ${MAKE_PROGRAM}
	${INSTALL_DATA} ${WRKSRC}/doc/html/*.html ${PREFIX}/share/doc/py-Xlib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-Xlib
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/py-Xlib

.include <bsd.port.mk>

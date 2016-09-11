# $OpenBSD: Makefile,v 1.2 2016/09/11 20:54:12 ajacoutot Exp $

COMMENT=	wysiwyw (what you see is what you want) editing platform

DISTNAME=	TeXmacs-1.99.4-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	editors print x11
REVISION=	0

HOMEPAGE=	http://texmacs.org/

MASTER_SITES=	${HOMEPAGE}/Download/ftp/tmftp/source/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	ICE QtGui SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB+=	freetype gmp guile ltdl m pthread stdc++ util z

MODULES=	x11/qt4
BUILD_DEPENDS=	print/ghostscript/gnu
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		print/ghostscript/gnu \
		x11/gtk+3,-guic
LIB_DEPENDS=	lang/guile

USE_GMAKE=	Yes
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	--with-qt=${MODQT4_QTDIR}/bin
AUTOCONF_VERSION=	2.69

NO_TEST=	Yes
ALL_TARGET=

post-extract:
	rm -f ${WRKDIST}/plugins/mathematica/bin/realpath.py

.include <bsd.port.mk>

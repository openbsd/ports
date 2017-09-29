# $OpenBSD: Makefile,v 1.8 2017/09/29 16:48:50 jca Exp $

# XXX base clang: lots of undefined references to Qt functions
COMPILER=	base-gcc

COMMENT=	wysiwyw (what you see is what you want) editing platform

DISTNAME=	TeXmacs-1.99.4-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	editors print x11
REVISION=	2

HOMEPAGE=	http://texmacs.org/

MASTER_SITES=	${HOMEPAGE}/Download/ftp/tmftp/source/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	ICE QtGui SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB+=	freetype gmp guile ltdl m pthread ${COMPILER_LIBCXX} util z

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

post-install:
	gunzip ${PREFIX}/man/man1/*.gz

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.6 2009/07/18 21:37:53 naddy Exp $

COMMENT-main=	OCR software
COMMENT-gui=	gocr tcl/tk frontend

V=		0.44
DISTNAME=	gocr-$V

PKGNAME-main=	gocr-$V
PKGNAME-gui=	gocr-gui-$Vp0

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=jocr/}

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

HOMEPAGE=	http://www-e.uni-magdeburg.de/jschulen/ocr/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-netpbm=${PREFIX}
USE_GMAKE=	Yes
FAKE_FLAGS+=	prefix=${PREFIX} exec_prefix=${PREFIX}

MULTI_PACKAGES=	-main -gui

MODULES=	x11/tk
MODTK_VERSION=	8.4

PKG_ARCH-gui=	*
RUN_DEPENDS-gui=${MODTK_RUN_DEPENDS} \
		::graphics/xsane \
		::textproc/p5-tkispell \
		::graphics/gocr

WANTLIB-main=	c m
LIB_DEPENDS-main=netpbm.>=0::graphics/netpbm

pre-configure:
	perl -pi -e 's,\@\@LOCALBASE\@\@,${LOCALBASE},g' \
		${WRKSRC}/man/man1/gocr.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gocr
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gocr
	${INSTALL_DATA} ${WRKSRC}/doc/gocr.html ${PREFIX}/share/doc/gocr

.include <bsd.port.mk>

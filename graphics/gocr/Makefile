# $OpenBSD: Makefile,v 1.1.1.1 2006/10/30 08:17:30 ajacoutot Exp $

COMMENT=	"OCR software"
COMMENT-gui=	"gocr tcl/tk frontend"

DISTNAME=	gocr-0.41
PKGNAME-gui=	${DISTNAME:S/-/-gui-/}
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
PATCHFILES+=	gocr-0.41-pgm.patch

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-netpbm=${PREFIX}
USE_GMAKE=	Yes
FAKE_FLAGS+=	DESTDIR=${DESTDIR} \
			prefix=${PREFIX} exec_prefix=${PREFIX}

MULTI_PACKAGES=	-gui
SUBPACKAGE?=

.if defined(PACKAGING) && ${SUBPACKAGE} == "-gui"
PKG_ARCH=	*
RUN_DEPENDS=	:tk-8.4.*:x11/tk/8.4 \
		::graphics/xsane \
		::textproc/p5-tkispell \
		::graphics/gocr
.else
WANTLIB=	c m
LIB_DEPENDS=	netpbm.>=0::graphics/netpbm
.endif

pre-configure:
	perl -pi -e 's,\@\@LOCALBASE\@\@,${LOCALBASE},g' \
		${WRKSRC}/man/man1/gocr.1

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gocr
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gocr
	${INSTALL_DATA} ${WRKSRC}/doc/gocr.html ${PREFIX}/share/doc/gocr

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2003/01/28 16:29:19 couderc Exp $

COMMENT=	"Ruby binding to Gdk-pixbuf"

VERSION=	0.31
DISTNAME=	ruby-gnome-all-${VERSION}
PKGNAME=	ruby-gdk-pixbuf-${VERSION}
CATEGORIES=	graphics

HOMEPAGE=	http://ruby-gnome.sourceforge.net/
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# GPL & LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ruby-gnome/}

MODULES=	ruby
LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf
RUN_DEPENDS=	:ruby-gtk->=0.31:x11/ruby-gtk

CONFIGURE_STYLE= simple
INSTALL_TARGET=	site-install
USE_X11=	Yes
NO_REGRESS=	Yes
SUBST_VARS=	OPSYS_VER

WRKSRC=		${WRKDIST}/gdkpixbuf
DOC_DIR=        ${MODRUBY_DOCDIR}/ruby-gdk-pixbuf
SAMPLE_DIR=	${MODRUBY_EXAMPLEDIR}/ruby-gdk-pixbuf

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOC_DIR}
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/sample/* ${SAMPLE_DIR}
	
.include <bsd.port.mk>

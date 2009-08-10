# $OpenBSD: Makefile,v 1.20 2009/08/10 06:31:45 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby binding to Gdk-pixbuf

VERSION=	0.34
DISTNAME=	ruby-gnome-all-${VERSION}
PKGNAME=	ruby-gdk-pixbuf-${VERSION}p12
CATEGORIES=	graphics

HOMEPAGE=	http://ruby-gnome.sourceforge.net/

# GPL & LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ruby-gnome/}

MODULES=	lang/ruby
LIB_DEPENDS=	gdk_pixbuf.>=2::graphics/gdk-pixbuf \
		ruby.>=1.84::lang/ruby
RUN_DEPENDS=	:ruby-gtk->=0.34:x11/ruby-gtk
WANTLIB=	c gmodule iconv intl gtk Xmu jpeg Xext Xi m X11 \
		glib gdk z tiff png pthread-stubs xcb

CONFIGURE_STYLE= ruby extconf
INSTALL_TARGET=	site-install
USE_X11=	Yes
NO_REGRESS=	Yes

WRKSRC=		${WRKDIST}/gdkpixbuf
DOC_DIR=        ${MODRUBY_DOCDIR}/ruby-gdk-pixbuf
SAMPLE_DIR=	${MODRUBY_EXAMPLEDIR}/ruby-gdk-pixbuf

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOC_DIR}
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/sample/* ${SAMPLE_DIR}
	
.include <bsd.port.mk>

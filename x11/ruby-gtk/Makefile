# $OpenBSD: Makefile,v 1.18 2006/07/28 06:29:34 steven Exp $

COMMENT=		"Ruby extension library for GTK Toolkit"

VERSION=		0.34
DISTNAME=		ruby-gtk-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11 devel

HOMEPAGE=		http://ruby-gnome.sourceforge.net

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ruby-gnome/}

MODULES=	lang/ruby

LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+ \
		ruby.1.84::lang/ruby

NO_REGRESS=	Yes

CONFIGURE_STYLE=	simple

DOC_DIR=	${MODRUBY_DOCDIR}/ruby-gtk/
EXAMPLE_DIR=	${MODRUBY_EXAMPLEDIR}/ruby-gtk/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	cp -R ${WRKSRC}/doc/* ${DOC_DIR}
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	cp -R ${WRKSRC}/sample/* ${EXAMPLE_DIR}

.include <bsd.port.mk>

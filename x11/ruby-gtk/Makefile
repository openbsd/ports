# $OpenBSD: Makefile,v 1.12 2003/01/20 16:48:21 couderc Exp $

COMMENT=		"Ruby extension library for GTK Toolkit"

VERSION=		0.31
DISTNAME=		ruby-gtk-${VERSION}
CATEGORIES=		x11 devel

HOMEPAGE=		http://ruby-gnome.sourceforge.net

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ruby-gnome/}

MODULES=ruby

LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+

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

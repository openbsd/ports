# $OpenBSD: Makefile,v 1.8 2002/06/29 13:03:53 couderc Exp $

COMMENT=		"Ruby extension library for GTK Toolkit"

VERSION=		0.28
DISTNAME=		ruby-gtk-${VERSION}
CATEGORIES=		x11 devel
NEED_VERSION=		1.531

HOMEPAGE=		http://ruby-gnome.sourceforge.net

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER

MASTER_SITES=           ${MASTER_SITE_SOURCEFORGE:=ruby-gnome/}

MODULES=ruby

LIB_DEPENDS+=		gtk.1.2,gdk.1.2::x11/gtk+

NO_REGRESS=	Yes

CONFIGURE_STYLE=	simple

INST_DIR=	${PREFIX}/share/ruby-gtk

post-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	@cp -R ${WRKSRC}/doc ${INST_DIR}
	@cp -R ${WRKSRC}/sample ${INST_DIR}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2002/05/21 19:17:54 nino Exp $

COMMENT=		"printing framework for GNOME"

DISTNAME=		gnome-print-0.35
CATEGORIES=		x11/gnome print
NEED_VERSION=   	1.530
HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

MAINTAINER=		Marc Matteo <marcm@lectroid.net>

MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/gnome-print/}

LIB_DEPENDS=		gdk_pixbuf.2::graphics/gdk-pixbuf \
			gnome.36,art_lgpl.4,gnomesupport.0,gnomeui.46::x11/gnome/libs \
			gnomecanvaspixbuf.1::graphics/gdk-pixbuf,-gnome \
			xml.9::textproc/libxml1

BUILD_DEPENDS=		:ghostscript-*:print/ghostscript/gnu
RUN_DEPENDS=		:ghostscript-*:print/ghostscript/gnu

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-print; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-print/

.include <bsd.port.mk>

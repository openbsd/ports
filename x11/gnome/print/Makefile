# $OpenBSD: Makefile,v 1.3 2002/09/22 15:37:35 marcm Exp $

COMMENT=		"printing framework for GNOME"

DISTNAME=		gnome-print-0.36
CATEGORIES=		x11/gnome print
HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-print/0.36/}

# fix for Alpha
.if (${MACHINE_ARCH} == "alpha")
PATCH_LIST=             patch-* sup-alpha-*
.endif

LIB_DEPENDS=		gdk_pixbuf.2::graphics/gdk-pixbuf \
			gnome.36,art_lgpl.4,gnomesupport.0,gnomeui.46::x11/gnome/libs \
			gnomecanvaspixbuf.1::graphics/gdk-pixbuf,-gnome \
			xml.9::textproc/libxml1

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

.include <bsd.port.mk>

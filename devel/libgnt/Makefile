# $OpenBSD: Makefile,v 1.3 2021/10/04 06:44:19 landry Exp $

COMMENT=	ncurses toolkit for text-mode graphical user interfaces

VER=		2.14.3
DISTNAME=	libgnt-${VER}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pidgin/libgnt/${VER}/}
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	gnt	0.0

HOMEPAGE=	https://keep.imfreedom.org/libgnt/libgnt/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB=	curses glib-2.0 gmodule-2.0 gobject-2.0 panel xml2

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools \
		textproc/gtk-doc
LIB_DEPENDS=	devel/glib2 \
		textproc/libxml

CONFIGURE_ARGS+=-Dpython2=false

NO_TEST=	Yes

.include <bsd.port.mk>

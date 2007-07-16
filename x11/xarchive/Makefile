# $OpenBSD: Makefile,v 1.1.1.1 2007/07/16 21:35:42 ajacoutot Exp $

COMMENT=	GTK+2 front-end for command line archiving tools

DISTNAME=	xarchive-0.2.8-6
CATEGORIES=	x11

HOMEPAGE=	http://xarchive.sourceforge.net/

MAINTAINER= 	Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xarchive/}

WANTLIB=        X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
                Xrender c expat fontconfig freetype m z atk-1.0 \
		glib-2.0 gmodule-2.0 gobject-2.0 glitz png pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo

MODULES=	devel/gettext
LIB_DEPENDS=	gdk_pixbuf-2.0.>=1000,gdk-x11-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	BASH_PROG=/bin/sh

pre-configure:
	@perl -pi -e 's,AWK_PROGS="mawk gawk awk",AWK_PROGS="awk gawk mawk",g' \
		${WRKSRC}/wrappers/*.src
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/doc/xarchive.1 \
		${WRKSRC}/doc/xarchive.1.txt.src

.include <bsd.port.mk>

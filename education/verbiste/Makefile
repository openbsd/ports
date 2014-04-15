# $OpenBSD: Makefile,v 1.25 2014/04/15 19:00:01 naddy Exp $

COMMENT=	French and Italian conjugation system

DISTNAME=	verbiste-0.1.41
SHARED_LIBS=	verbiste-0.1	5.0	# .0.0
CATEGORIES=	education
HOMEPAGE=	http://sarrazip.com/dev/verbiste.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://sarrazip.com/dev/

MODULES=	devel/gettext

BUILD_DEPENDS=	textproc/p5-XML-Parser
LIB_DEPENDS=	x11/gtk+2 \
		textproc/libxml
RUN_DEPENDS=	x11/gtk+2,-guic

WANTLIB=	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama \
		Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 \
		harfbuzz m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs \
		stdc++ xcb xcb-render xcb-shm xml2 z

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--without-gnome-app \
		--with-gtk-app

MAKE_FLAGS=	INTLLIBS='$$(LTLIBINTL)' \
		latexdir='$$(datadir)/texmf-local/tex/latex/$$(PACKAGE)'

.include <bsd.port.mk>

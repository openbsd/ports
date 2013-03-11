# $OpenBSD: Makefile,v 1.16 2013/03/11 11:06:03 espie Exp $

COMMENT=	French and Italian conjugation system

DISTNAME=	verbiste-0.1.34
REVISION=	0
SHARED_LIBS=	verbiste-0.1	4.0	# .0.0
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

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs stdc++ xcb xcb-render xcb-shm xml2 z

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static \
		--with-gtk-app

MAKE_FLAGS=	INTLLIBS='$$(LTLIBINTL)'

.include <bsd.port.mk>

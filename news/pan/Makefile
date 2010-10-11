# $OpenBSD: Makefile,v 1.37 2010/10/11 08:16:52 jasper Exp $

COMMENT=	powerful Gtk+2 newsreader

V=		0.133
DISTNAME=	pan-${V}
REVISION=	0
CATEGORIES=	news x11

HOMEPAGE=	http://pan.rebelbase.com/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb z
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 gmime-2.4 gtkspell
WANTLIB += xcb-render xcb-render-util

MASTER_SITES=	http://pan.rebelbase.com/download/releases/${V}/source/

MODULES=	devel/gettext \
		textproc/intltool # regress target

LIB_DEPENDS=	::x11/gtk+2 \
		:gmime->=2.4,<2.6:mail/gmime24 \
		::textproc/gtkspell
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

VMEM_WARNING=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	perl -pi -e 's,gmime-2.0,gmime-2.4,g' ${WRKSRC}/configure

post-configure:
	cd ${WRKSRC}/po && for i in $$(ls *.po) ; do ${LOCALBASE}/bin/msgfmt -c -o $${i%%po}gmo $$i ; done

.include <bsd.port.mk>

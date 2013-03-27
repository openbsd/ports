# $OpenBSD: Makefile,v 1.1.1.1 2013/03/27 11:16:25 ajacoutot Exp $

COMMENT =		Mac OS-X style lightweight application launcher

DISTNAME =		wbar-2.3.4
EXTRACT_SUFX =		.tgz

CATEGORIES=		x11

HOMEPAGE=		http://code.google.com/p/wbar/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Imlib2 X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread stdc++ xml2 z

MASTER_SITES =		http://wbar.googlecode.com/files/

MODULES =		devel/gettext \
			textproc/intltool

BUILD_DEPENDS =		textproc/gsed
RUN_DEPENDS =		devel/desktop-file-utils

LIB_DEPENDS =		devel/libglade2 \
			graphics/imlib2

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS =		bashcompletiondir=${PREFIX}/share/bash-completion/completions \
			autostartdir=${PREFIX}/share/applications

FAKE_FLAGS =		defaultdir=${PREFIX}/share/examples/wbar/wbar.d

pre-configure:
	perl -pi -e 's,sed -i,gsed -i,g' ${WRKSRC}/configure

.include <bsd.port.mk>

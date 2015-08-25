# $OpenBSD: Makefile,v 1.6 2015/08/25 13:18:28 sthen Exp $

COMMENT =	lightweight graphical download manager
DISTNAME =	uget-2.0.1
CATEGORIES =	www net x11
REVISION =	0

HOMEPAGE =	http://ugetdm.com/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject crypto curl fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gstreamer-1.0 gtk-3 idn m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread ssl z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=urlget/}

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS =	devel/libnotify \
		multimedia/gstreamer1/core \
		net/curl \
		x11/gtk+3

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# You should be using aria2 if the arch has it.
.if ${MACHINE_ARCH} != "mips64el" && ${MACHINE_ARCH} != "mips64"
RUN_DEPENDS +=	www/aria2
.endif

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# BSD make doesn't install the localization files.
USE_GMAKE =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/uget/UgetAria2.c

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.17 2010/07/29 06:40:02 dcoppa Exp $

COMMENT=		fast, small, dynamic and awesome window manager

DISTNAME=		awesome-3.4.6
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		x11

HOMEPAGE=		http://awesome.naquadah.org/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=		Imlib2 X11 Xau Xdmcp Xext Xrender c cairo
WANTLIB+=		dbus-1 ev execinfo expat fontconfig freetype
WANTLIB+=		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB+=		iconv intl lua m pango-1.0 pangocairo-1.0
WANTLIB+=		pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB+=		startup-notification-1 xcb xcb-atom xcb-aux
WANTLIB+=		xcb-event xcb-icccm xcb-image xcb-keysyms
WANTLIB+=		xcb-property xcb-randr xcb-render xcb-render-util
WANTLIB+=		xcb-shape xcb-shm xcb-xinerama xcb-xtest
WANTLIB+=		xdg-basedir z

MASTER_SITES=		${HOMEPAGE}download/

LIB_DEPENDS=		::devel/libexecinfo \
			::devel/pango \
			::devel/libev \
			::devel/startup-notification \
			::graphics/imlib2 \
			::lang/lua \
			::x11/dbus \
			::x11/libxdg-basedir

BUILD_DEPENDS=		::devel/gperf \
			::textproc/asciidoc \
			::textproc/xmlto \
			::graphics/ImageMagick \
			::devel/doxygen

RUN_DEPENDS=		::misc/rlwrap \
			::graphics/feh

MODULES=		devel/cmake

CONFIGURE_STYLE=	cmake

CONFIGURE_ARGS=		-DCOMPRESS_MANPAGES=off

USE_X11=		Yes

NO_REGRESS=		Yes

pre-install:
	@rm -f ${WRKDIST}/lib/awful/util.lua.in.orig

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awesome
	@mv ${WRKINST}/${SYSCONFDIR}/xdg/awesome/rc.lua \
		${PREFIX}/share/examples/awesome/

.include <bsd.port.mk>

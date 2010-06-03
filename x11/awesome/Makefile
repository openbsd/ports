# $OpenBSD: Makefile,v 1.14 2010/06/03 15:43:18 dcoppa Exp $

COMMENT=		fast, small, dynamic and awesome window manager

DISTNAME=		awesome-3.4.4
PKGNAME=		${DISTNAME}p0
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		x11

HOMEPAGE=		http://awesome.naquadah.org/

MAINTAINER=		David Coppa <dcoppa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xrender c cairo expat \
			fontconfig freetype glib-2.0 glitz gmodule-2.0 \
			gobject-2.0 gthread-2.0 iconv intl m pixman-1 \
			png pthread pthread-stubs xcb xcb-atom xcb-aux \
			xcb-event xcb-icccm xcb-image xcb-keysyms \
			xcb-property xcb-randr xcb-render \
			xcb-render-util xcb-shape xcb-shm \
			xcb-xinerama xcb-xtest z

MASTER_SITES=		${HOMEPAGE}download/

LIB_DEPENDS=		execinfo::devel/libexecinfo \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango \
			ev::devel/libev \
			startup-notification-1::devel/startup-notification \
			Imlib2.>=2::graphics/imlib2 \
			lua::lang/lua \
			dbus-1::x11/dbus \
			xdg-basedir::x11/libxdg-basedir

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/awesome/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awesome/
	@mv ${WRKINST}/${SYSCONFDIR}/xdg/awesome/rc.lua ${PREFIX}/share/examples/awesome/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.44 2012/04/19 08:19:34 jasper Exp $

COMMENT=	fantasy turn-based strategy game

DISTNAME=	wesnoth-1.10.2

CATEGORIES=	games x11

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://www.wesnoth.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wesnoth/}
EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SDL SDL_image SDL_mixer SDL_net SDL_ttf SM X11
WANTLIB += Xext Xrender boost_iostreams-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt c cairo dbus-1 expat
WANTLIB += fontconfig freetype fribidi glib-2.0 gobject-2.0 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += z

MODULES=	devel/cmake \
		devel/gettext

LIB_DEPENDS=	devel/boost \
		devel/sdl-image \
		devel/sdl-net \
		devel/sdl-mixer \
		devel/sdl-ttf \
		devel/fribidi \
		devel/pango \
		x11/dbus

RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/libxslt

CONFIGURE_ARGS+=-DFIFO_DIR=/var/run/ \
		-DENABLE_CAMPAIGN_SERVER=ON \
		-DENABLE_STRICT_COMPILATION=OFF \
		-DMANDIR=${PREFIX}/man

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	flavored

FLAVORS=	lite
FLAVOR?=

.if ${FLAVOR:Mlite}
CONFIGURE_ARGS+=-DENABLE_LOW_MEM=ON
.endif

.include <bsd.port.mk>

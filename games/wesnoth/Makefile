# $OpenBSD: Makefile,v 1.62 2015/06/29 13:45:52 kirby Exp $

PORTROACH = 	limitw:1,even

BROKEN-mips64 =		missing atomic ops
BROKEN-mips64el =	missing atomic ops
BROKEN-hppa =		missing atomic ops
COMMENT=	fantasy turn-based strategy game

DISTNAME=	wesnoth-1.12.4

CATEGORIES=	games x11

MAINTAINER=	Kirill Bychkov <kirby@openbsd.org>

HOMEPAGE=	http://www.wesnoth.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wesnoth/}
EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SDL SDL_image SDL_mixer SDL_net SDL_ttf SM X11
WANTLIB += Xext boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_locale-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt c cairo dbus-1 fontconfig freetype fribidi
WANTLIB += glib-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread stdc++ vorbisfile z

MODULES=	devel/cmake \
		devel/gettext

LIB_DEPENDS=	devel/boost>=1.53.0p6 \
		devel/sdl-image \
		devel/sdl-net \
		devel/sdl-mixer \
		devel/sdl-ttf \
		devel/fribidi \
		devel/pango \
		x11/dbus

RUN_DEPENDS=	devel/desktop-file-utils \
		textproc/libxslt

CONFIGURE_ARGS+=-DFIFO_DIR=/var/wesnothd \
		-DSERVER_UID=708 \
		-DSERVER_GID=708 \
		-DENABLE_CAMPAIGN_SERVER=ON \
		-DENABLE_STRICT_COMPILATION=OFF \
		-DMANDIR=${PREFIX}/man

SEPARATE_BUILD=	flavored

NO_TEST=	Yes

FLAVORS=	lite
FLAVOR?=

.if ${FLAVOR:Mlite}
CONFIGURE_ARGS+=-DENABLE_LOW_MEM=ON
.endif

post-install:
	find ${PREFIX} -name .gitignore -exec rm -f {} \+

.include <bsd.port.mk>

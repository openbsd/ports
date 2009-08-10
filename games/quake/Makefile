# $OpenBSD: Makefile,v 1.22 2009/08/10 06:31:42 kili Exp $

COMMENT-main=		Quake/Quake-world client
COMMENT-server=		Quake world server
CATEGORIES=		games

FULLPKGNAME-server=	quakeworld-server-20000101p3
PKGNAME-main=		quake-20000101p6
DISTNAME=		quake-v6-bsd-kame
PATCHFILES=		quake6-00-v6-20000202b.diff.gz:0
PATCH_DIST_STRIP=	-p1

HOMEPAGE=		http://www.viagenie.qc.ca/en/ipv6-quake.shtml
MASTER_SITES=		${MASTER_SITE_BACKUP}
MASTER_SITES0=		ftp://ftp.kame.net/pub/kame/misc/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c m

USE_GMAKE=		Yes

MULTI_PACKAGES=		-main -server
FLAVORS=		sdl ggi x11
FLAVOR?=		sdl

CONFIGURE_ENV=LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'
CONFIGURE_ENV+=CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include'
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--enable-release
CONFIGURE_ARGS+=	--bindir=/bin
CONFIGURE_ARGS+=	--with-opengl=no --with-opengl-includes=no


.if ${FLAVOR:L} == sdl
WANTLIB+=		pthread
LIB_DEPENDS-main=	SDL::devel/sdl
CONFIGURE_ARGS+=	--with-sdl=${LOCALBASE} --without-ggi
MAKE_FLAGS=		HAS_X11=no
CFLAGS+=		-pthread
.elif ${FLAVOR:L} == ggi
WANTLIB+=		pthread
LIB_DEPENDS-main=	ggi::graphics/ggi
CONFIGURE_ARGS+=	--with-ggi=${LOCALBASE} --without-sdl
MAKE_FLAGS=		HAS_X11=no
CFLAGS+=		-pthread
.elif ${FLAVOR:L} == x11
CONFIGURE_ARGS+=	--without-sdl --without-ggi
MAKE_FLAGS=	
WANTLIB-main=		X11 Xext c m pthread-stubs xcb
.else
BROKEN=			choose either sdl, ggi or x11
.endif

WRKDIST=	${WRKDIR}/quakeforge

post-extract:
	@rm ${WRKDIST}/{config.cache,config.log}
	@find ${WRKDIST} -name \*.o |xargs rm
	@cp ${FILESDIR}/snd_openbsd.c ${WRKDIST}/common

post-patch:
	cd ${WRKDIST}; PATH=${PORTPATH} AUTOCONF_VERSION="${AUTOCONF_VERSION}" autoreconf

post-install:
	@chown -R ${BINOWN}:${BINGRP} ${PREFIX}/bin/*

.include <bsd.port.mk>

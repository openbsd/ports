# $OpenBSD: Makefile,v 1.16 2006/11/25 19:50:07 espie Exp $

COMMENT-main=		"Quake/Quake-world client"
COMMENT-server=		"Quake world server"
CATEGORIES=		games

FULLPKGNAME-server=	quakeworld-server-20000101p1
PKGNAME-main=		quake-20000101p3
DISTNAME=		quake-v6-bsd-kame
PATCHFILES=		quake6-00-v6-20000202b.diff.gz:0
PATCH_DIST_STRIP=	-p1

HOMEPAGE=		http://www.viagenie.qc.ca/en/ipv6-quake.shtml
MASTER_SITES=		http://www.viagenie.qc.ca/quake/
MASTER_SITES0=		ftp://ftp.kame.net/pub/kame/misc/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m pthread

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

.if ${FLAVOR:L:Msdl}
LIB_DEPENDS-main=	SDL::devel/sdl
CONFIGURE_ARGS+=	--with-sdl=${LOCALBASE} --without-ggi
MAKE_FLAGS=		HAS_X11=no
CFLAGS+=		-pthread
.elif ${FLAVOR:L:Mggi}
LIB_DEPENDS-main=	ggi::graphics/ggi
CONFIGURE_ARGS+=	--with-ggi=${LOCALBASE} --without-sdl
MAKE_FLAGS=		HAS_X11=no
CFLAGS+=		-pthread
.elif ${FLAVOR:L:Mx11}
CONFIGURE_ARGS+=	--without-sdl --without-ggi
MAKE_FLAGS=	
WANTLIB-main=		c m X11 Xext
.else
ERRORS="Need some non empty flavor"
.endif

WRKDIST=	${WRKDIR}/quakeforge
FAKE_FLAGS=	${MAKE_FLAGS}	DESTDIR=${WRKINST}

post-extract:
	cd ${WRKDIST}; rm config.cache config.log
	cd ${WRKDIST}; find . -name \*.o |xargs rm
	cp ${FILESDIR}/snd_openbsd.c ${WRKDIST}/common

post-patch:
	cd ${WRKDIST}; PATH=${PORTPATH} AUTOCONF_VERSION="${AUTOCONF_VERSION}" autoreconf

post-install:
	@chown -R ${BINOWN}:${BINGRP} ${PREFIX}/bin/*

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.19 2008/01/11 16:48:44 ajacoutot Exp $

COMMENT-main=		Quake/Quake-world client
COMMENT-server=		Quake world server
CATEGORIES=		games

FULLPKGNAME-server=	quakeworld-server-20000101p2
PKGNAME-main=		quake-20000101p4
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

BRKFLAVORMSG=		choose either sdl, ggi or x11

.if ${FLAVOR:L:Msdl}
.if ${FLAVOR:L:Mggi} || ${FLAVOR:L:Mx11}
BROKEN=			${BRKFLAVORMSG}
.endif
WANTLIB+=		pthread
LIB_DEPENDS-main=	SDL::devel/sdl
CONFIGURE_ARGS+=	--with-sdl=${LOCALBASE} --without-ggi
MAKE_FLAGS=		HAS_X11=no
CFLAGS+=		-pthread
.elif ${FLAVOR:L:Mggi}
.if ${FLAVOR:L:Msdl} || ${FLAVOR:L:Mx11}
BROKEN=			${BRKFLAVORMSG}
.endif
WANTLIB+=		pthread
LIB_DEPENDS-main=	ggi::graphics/ggi
CONFIGURE_ARGS+=	--with-ggi=${LOCALBASE} --without-sdl
MAKE_FLAGS=		HAS_X11=no
CFLAGS+=		-pthread
.elif ${FLAVOR:L:Mx11}
.if ${FLAVOR:L:Mggi} || ${FLAVOR:L:Msdl}
BROKEN=			${BRKFLAVORMSG}
.endif
CONFIGURE_ARGS+=	--without-sdl --without-ggi
MAKE_FLAGS=	
WANTLIB-main=		c m X11 Xext
.else
ERRORS="Need some non empty flavor"
.endif

WRKDIST=	${WRKDIR}/quakeforge

post-extract:
	cd ${WRKDIST}; rm config.cache config.log
	cd ${WRKDIST}; find . -name \*.o |xargs rm
	cp ${FILESDIR}/snd_openbsd.c ${WRKDIST}/common

post-patch:
	cd ${WRKDIST}; PATH=${PORTPATH} AUTOCONF_VERSION="${AUTOCONF_VERSION}" autoreconf

post-install:
	@chown -R ${BINOWN}:${BINGRP} ${PREFIX}/bin/*

.include <bsd.port.mk>

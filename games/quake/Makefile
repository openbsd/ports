# $OpenBSD: Makefile,v 1.6 2002/12/29 15:10:08 fgsch Exp $

COMMENT=		"Quake/Quake-world client"
COMMENT-server=		"Quake world server"
CATEGORIES=		games

FULLPKGNAME-server=	quakeworld-server-20000101
PKGNAME=		quake-20000101
DISTNAME=		quake-v6-bsd-kame
PATCHFILES=		quake6-00-v6-20000202b.diff.gz:0
PATCH_DIST_STRIP=	-p1

HOMEPAGE=		http://www.viagenie.qc.ca/en/ipv6-quake.shtml
MASTER_SITES=		http://www.viagenie.qc.ca/quake/
MASTER_SITES0=		ftp://ftp.kame.net/pub/kame/misc/

MAINTAINER=		Maurice Nonnekes <maurice@amaze.nl>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=		Yes

MULTI_PACKAGES=-server
FLAVORS=		sdl ggi
FLAVOR?=		sdl

.if ${FLAVOR:L:Msdl} && ${FLAVOR:L:Mggi}
ERRORS="Fatal: Choose only one flavor: sdl or ggi"
.endif

SUBPACKAGE?=

CONFIGURE_ENV=LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'
CONFIGURE_ENV+=CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include'
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--enable-release
CONFIGURE_ARGS+=	--bindir=/bin
CONFIGURE_ARGS+=	--with-opengl=no --with-opengl-includes=no

.if ${FLAVOR:L:Msdl}
.  if !defined(PACKAGING) || ${SUBPACKAGE} == ""
LIB_DEPENDS=		SDL::devel/sdl
.  endif
CONFIGURE_ARGS+=	--with-sdl=${LOCALBASE} --without-ggi
MAKE_FLAGS=	HAS_X11=no
CFLAGS+=		-pthread
.elif ${FLAVOR:L:Mggi}
.  if !defined(PACKAGING) || ${SUBPACKAGE} == ""
LIB_DEPENDS=		ggi.::graphics/ggi
.  endif
CONFIGURE_ARGS+=	--with-ggi=${LOCALBASE} --without-sdl
MAKE_FLAGS=	HAS_X11=no
.else
CONFIGURE_ARGS+=	--without-sdl --without-ggi
MAKE_FLAGS=	
.endif

WRKDIST=		${WRKDIR}/quakeforge
FAKE_FLAGS=	${MAKE_FLAGS}	DESTDIR=${WRKINST}

post-extract:
	cd ${WRKDIST}; rm config.cache config.log
	cd ${WRKDIST}; find . -name \*.o |xargs rm
	cp ${FILESDIR}/snd_openbsd.c ${WRKDIST}/common

post-patch:
	cd ${WRKDIST}; autoreconf

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2001/04/19 18:55:39 obecian Exp $

COMMENT=	'cross-platform multimedia library'

VER=		1.2.0
DISTNAME=	SDL-${VER}
PKGNAME=	sdl-${VER}
CATEGORIES=	devel
NEED_VERSION=	1.378

HOMEPAGE=	http://www.libsdl.org

MAINTAINER=	Peter Valchev <pvalchev@home.com>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}/release/ \
		http://www.devolution.com/~slouken/SDL/release/

FLAVORS=	oss gl arts no_x11
FLAVOR?=	oss

USE_GMAKE=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-joystick \
		 --disable-pthread-sem \
		 --disable-nasm \
		 --disable-video-opengl \
		 --disable-arts \
		 --disable-esd \
		 --disable-oss

.if ${FLAVOR:L:Moss}
LIB_DEPENDS=	esd.2::audio/esound
CONFIGURE_ARGS+= --enable-esd \
		 --enable-oss
.endif

.if ${FLAVOR:L:Mgl}
LIB_DEPENDS+=	MesaGL.3::graphics/Mesa
CONFIGURE_ARGS+= --enable-video-opengl
.endif

.if ${FLAVOR:L:Marts}
LIB_DEPENDS+=	artsc::x11/kde/libs2
CONFIGURE_ARGS+= --enable-arts
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --without-x \
		 --disable-video-x11
.else
USE_X11=	Yes
.endif

post-patch:
	@touch ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure

.include <bsd.port.mk>

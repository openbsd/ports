# $OpenBSD: Makefile,v 1.5 2001/05/12 04:27:05 pvalchev Exp $

COMMENT=	"cross-platform multimedia library"

VER=		1.2.0
DISTNAME=	SDL-${VER}
PKGNAME=	${DISTNAME:L}
CATEGORIES=	devel
NEED_VERSION=	1.378

HOMEPAGE=	http://www.libsdl.org

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

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
CONFIGURE_ENV+=	X11BASE="${X11BASE}"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-joystick \
		 --disable-pthread-sem \
		 --disable-nasm

.if ${FLAVOR:L:Moss}
LIB_DEPENDS+=	esd.2::audio/esound
CONFIGURE_ARGS+= --enable-esd \
		 --enable-oss
.else
CONFIGURE_ARGS+= --disable-esd \
		 --disable-oss
.endif

.if ${FLAVOR:L:Mgl}
CONFIGURE_ARGS+= --enable-video-opengl
.else
CONFIGURE_ARGS+= --disable-video-opengl
.endif

.if ${FLAVOR:L:Marts}
LIB_DEPENDS+=	artsc::x11/kde/libs2
CONFIGURE_ARGS+= --enable-arts
.else
CONFIGURE_ARGS+= --disable-arts
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

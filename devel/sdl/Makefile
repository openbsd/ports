# $OpenBSD: Makefile,v 1.10 2001/07/11 16:45:45 pvalchev Exp $

COMMENT=	"cross-platform multimedia library"

VERSION=	1.2.1
DISTNAME=	SDL-${VERSION}
PKGNAME=	${DISTNAME:L}p1
CATEGORIES=	devel
NEED_VERSION=	1.417

HOMEPAGE=	http://www.libsdl.org

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}/release/ \
		http://www.devolution.com/~slouken/SDL/release/

FLAVORS=	sun oss esd arts no_x11
FLAVOR?=	sun

.if empty(FLAVOR:L:Msun) && empty(FLAVOR:L:Moss) && empty(FLAVOR:L:Mesd)
.BEGIN:
	@echo "You must choose a flavor from: sun, oss, esd"
	@echo "to select the appropriate sound system you want to use."
	@echo "Additionally, you can append your other choices afterwards."
	@exit 1
.endif

USE_GMAKE=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	X11BASE="${X11BASE}"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-pthread-sem \
		 --disable-nasm

.if ${FLAVOR:L:Msun}
CONFIGURE_ARGS+= --enable-openbsdaudio
.else
CONFIGURE_ARGS+= --disable-openbsdaudio
.endif

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd.2::audio/esound
CONFIGURE_ARGS+= --enable-esd
.else
CONFIGURE_ARGS+= --disable-esd
.endif

.if ${FLAVOR:L:Moss}
CONFIGURE_ARGS+= --enable-oss
.else
CONFIGURE_ARGS+= --disable-oss
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
LDFLAGS=	"-Wl,R${X11BASE}/lib -L${X11BASE}/lib"
.endif

post-patch:
	@touch ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure

.include <bsd.port.mk>

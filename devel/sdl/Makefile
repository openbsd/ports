# $OpenBSD: Makefile,v 1.12 2001/07/19 22:03:26 pvalchev Exp $

COMMENT=	"cross-platform multimedia library"

VERSION=	1.2.1
DISTNAME=	SDL-${VERSION}
PKGNAME=	${DISTNAME:L}p1
CATEGORIES=	devel
NEED_VERSION=	1.422

HOMEPAGE=	http://www.libsdl.org

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}/release/ \
		http://www.devolution.com/~slouken/SDL/release/

FLAVORS=	sun esd arts no_x11
FLAVOR?=	sun

.if empty(FLAVOR:L:Msun) && empty(FLAVOR:L:Mesd)
ERRORS+=    "Fatal: You must choose a flavor from: sun, esd" \
	    "   to select the appropriate sound system you want to use." \
	    "   Additionally, you can append your other choices afterwards."
.endif

USE_GMAKE=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=	X11BASE="${X11BASE}"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-pthread-sem \
		 --disable-oss \
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

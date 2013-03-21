# $OpenBSD: Makefile,v 1.25 2013/03/21 08:45:17 ajacoutot Exp $

ONLY_FOR_ARCHS= 	amd64 i386
SHARED_ONLY=		Yes

COMMENT=		first person shooter

DISTNAME=		quake2-0.3
REVISION =		12
CATEGORIES=		games

HOMEPAGE=		http://www.quakeforge.net/
MAINTAINER=		Claudio Jeker <claudio@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE GL SM X11 Xau Xdmcp Xext Xrandr Xrender Xxf86dga \
			Xxf86vm c m pthread pthread-stubs sndio usbhid xcb \
			SDL

MASTER_SITES=		http://distfiles.nl/

MODULES=		converters/libiconv
LIB_DEPENDS=		devel/sdl

SEPARATE_BUILD=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-opengl=${X11BASE} --without-svgalib \
			--without-ao
NO_TEST=		Yes

CFLAGS+=                -pthread -g

post-extract:
	cp ${FILESDIR}/snd_sndio.c ${WRKSRC}/src

.include <bsd.port.mk>

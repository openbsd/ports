# $OpenBSD: Makefile,v 1.30 2013/08/09 23:12:20 ajacoutot Exp $

# we use "macppc" and not "powerpc" on purpose here ; i.e. bktr(4) needed
ONLY_FOR_ARCHS=	i386 macppc amd64 alpha

COMMENT=	TV viewing application for bktr(4) cards

DISTNAME=	xawtv-3.94
REVISION=	6
CATEGORIES=	x11

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://bytesex.org/xawtv/

MASTER_SITES=	http://dl.bytesex.org/releases/xawtv/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xft Xinerama Xmu Xpm
WANTLIB += Xrandr Xrender Xt Xv Xxf86dga Xxf86vm c expat fontconfig
WANTLIB += freetype jpeg m ncurses ossaudio pthread pthread-stubs
WANTLIB += xcb z

LIB_DEPENDS=	graphics/jpeg

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=--enable-mmx
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-aa --disable-motif --disable-gl \
		--disable-dv --disable-quicktime

MAKE_FLAGS=	verbose=yes SYSCONFDIR="${SYSCONFDIR}"
NO_TEST=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes

post-install:
	@perl -pi -e "s,/etc/X11,${SYSCONFDIR}," ${PREFIX}/man/man5/xawtvrc.5
	${INSTALL_DATA} ${WRKSRC}/x11/Xawtv.ad \
			${PREFIX}/lib/X11/app-defaults/Xawtv

.include <bsd.port.mk>

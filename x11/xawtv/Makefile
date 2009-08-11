# $OpenBSD: Makefile,v 1.20 2009/08/11 08:42:09 ajacoutot Exp $

# we use "macppc" and not "powerpc" on purpose here ; i.e. bktr(4) needed
ONLY_FOR_ARCHS=	i386 macppc amd64

COMMENT=	TV viewing application for bktr(4) cards

DISTNAME=	xawtv-3.94
PKGNAME=	${DISTNAME}p3
CATEGORIES=	x11

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://bytesex.org/xawtv/

MASTER_SITES=	http://dl.bytesex.org/releases/xawtv/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xaw Xau Xdmcp Xext Xft Xinerama Xmu Xpm Xrandr \
		Xrender Xt Xv Xxf86dga Xxf86vm c fontconfig freetype m z \
		ncurses ossaudio pthread expat pthread-stubs xcb

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=--enable-mmx
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-aa --disable-motif --disable-gl \
		--disable-dv --disable-quicktime
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

MAKE_FLAGS=	verbose=yes SYSCONFDIR="${SYSCONFDIR}"
NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

post-install:
	@perl -pi -e "s,/etc/X11,${SYSCONFDIR}," ${PREFIX}/man/man5/xawtvrc.5
	${INSTALL_DATA} ${WRKSRC}/x11/Xawtv.ad \
			${PREFIX}/lib/X11/app-defaults/Xawtv

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.12 2006/02/06 17:48:59 naddy Exp $

ONLY_FOR_ARCHS=	i386 macppc amd64

COMMENT=	"TV viewing application for bktr(4) cards"

DISTNAME=	xawtv-3.94
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://bytesex.org/xawtv/

MASTER_SITES=	http://dl.bytesex.org/releases/xawtv/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xft Xinerama Xmu Xpm Xrandr \
			Xrender Xt Xv Xxf86dga Xxf86vm c fontconfig freetype m \
			ncurses ossaudio pthread

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	jpeg.62::graphics/jpeg

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

WRKDIST=	${WRKDIR}/${DISTNAME}

post-install:
	@perl -pi -e "s,/etc/X11,${SYSCONFDIR}," ${PREFIX}/man/man5/xawtvrc.5
	${INSTALL_DATA} ${WRKSRC}/x11/Xawtv.ad \
			${PREFIX}/lib/X11/app-defaults/Xawtv

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.42 2019/07/12 20:46:07 sthen Exp $

COMMENT=		open source 68k Macintosh emulator

DISTNAME=		BasiliskII_src_01052006
PKGNAME=		BasiliskII-1.0
REVISION=		10
CATEGORIES=		emulators

HOMEPAGE=		http://basilisk.cebix.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://distfiles.nl/
EXTRACT_SUFX=		.tar.bz2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86dga Xxf86vm c atk-1.0 SDL
WANTLIB += cairo fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		devel/sdl \
			x11/gtk+2

USE_GMAKE=		Yes

WRKDIST=		${WRKDIR}/BasiliskII-1.0
WRKSRC=			${WRKDIR}/BasiliskII-1.0/src/Unix

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-sdl-audio \
			--with-esd=no \
			--disable-fbdev-dga
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV +=	LDFLAGS=-Wl,-znotext
.endif

CFLAGS +=	-fgnu89-inline

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/BasiliskII
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/BasiliskII

.include <bsd.port.mk>

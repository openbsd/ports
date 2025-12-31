COMMENT=	aewm++ based pretty themable window manager

V=		0.4.1
DISTNAME=	pekwm-${V}

CATEGORIES=	x11

HOMEPAGE=	https://www.pekwm.se/
SITES=		https://github.com/pekdon/pekwm/releases/download/release-${V}/

MAINTAINER=	Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext Xft Xinerama Xpm
WANTLIB += Xrandr c cairo curl fontconfig freetype glib-2.0
WANTLIB += gobject-2.0 harfbuzz intl jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 png udev

COMPILER =	base-clang ports-gcc base-gcc

LIB_DEPENDS=	devel/pango \
		graphics/jpeg \
		graphics/png \
		net/curl \
		sysutils/libudev-openbsd

MODULES=	devel/cmake

CONFIGURE_ARGS=	-DCMAKE_INSTALL_SYSCONFDIR=${SYSCONFDIR} \
		-DCMAKE_INSTALL_FULL_MANDIR=${PREFIX}/man \
		-DAWK=/usr/bin/awk \
		-DSED=/usr/bin/sed \
		-DSH=/bin/sh \
		-DTESTS=ON

post-install:
	@mv ${WRKINST}/etc/pekwm ${PREFIX}/share/examples

.include <bsd.port.mk>

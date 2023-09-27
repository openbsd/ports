COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-${V}
V=		0.3.0
CATEGORIES=	x11

HOMEPAGE=	https://www.pekwm.se/

MAINTAINER=	Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext Xft Xinerama Xpm
WANTLIB += Xrandr c cairo fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += harfbuzz intl jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangoxft-1.0 png

COMPILER =	base-clang ports-gcc base-gcc

SITES=		https://github.com/pekdon/pekwm/releases/download/release-${V}/
LIB_DEPENDS=	devel/pango \
		graphics/jpeg \
		graphics/png

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

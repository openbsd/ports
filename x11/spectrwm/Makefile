# $OpenBSD: Makefile,v 1.27 2019/07/12 20:51:21 sthen Exp $

COMMENT=		small tiling window manager

SHARED_LIBS=		swmhack 1.0

V=			3.2.0
REVISION=		0
GH_TAGNAME=		SPECTRWM_${V:S/./_/g}
GH_ACCOUNT=		conformal
GH_PROJECT=		spectrwm
DISTNAME=		${GH_PROJECT}-${V}
CATEGORIES=		x11

HOMEPAGE=		https://github.com/conformal/spectrwm/
MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += X11 X11-xcb Xcursor Xft c util xcb xcb-icccm xcb-keysyms
WANTLIB += xcb-randr xcb-util xcb-xtest

RUN_DEPENDS=	x11/dmenu>=4.5

MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/bin" \
		MANDIR="${TRUEPREFIX}/man/man" \
		SHLIB_MAJOR=${LIBswmhack_VERSION:R} \
		SHLIB_MINOR=${LIBswmhack_VERSION:E}

NO_TEST=	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/spectrwm.c

post-install:
	ln -s ${TRUEPREFIX}/bin/spectrwm ${PREFIX}/bin/scrotwm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/spectrwm
	${INSTALL_SCRIPT} ${WRKSRC}/baraction.sh ${PREFIX}/share/examples/spectrwm
	${INSTALL_SCRIPT} ${WRKSRC}/initscreen.sh ${PREFIX}/share/examples/spectrwm
	${INSTALL_SCRIPT} ${WRKSRC}/screenshot.sh ${PREFIX}/share/examples/spectrwm
	${INSTALL_DATA} ${WRKSRC}/spectrwm.conf ${PREFIX}/share/examples/spectrwm

.for i in es cz fr fr_ch se us
	${INSTALL_DATA} ${WRKSRC}/spectrwm_$i.conf ${PREFIX}/share/examples/spectrwm
.endfor

.include <bsd.port.mk>

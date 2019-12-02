# $OpenBSD: Makefile,v 1.31 2019/12/02 14:35:35 bket Exp $

COMMENT=		small tiling window manager

GH_ACCOUNT=		conformal
GH_PROJECT=		spectrwm
GH_COMMIT=		6352cdbc3ec05df36dd9087aaf59ddecdcb0031a
DISTNAME=		${GH_PROJECT}-3.2.0.20191129

SHARED_LIBS=		swmhack 1.0

CATEGORIES=		x11

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>, \
			Bjorn Ketelaars <bket@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += X11 X11-xcb Xcursor Xft c util xcb xcb-icccm xcb-keysyms
WANTLIB += xcb-randr xcb-util xcb-xinput xcb-xtest

RUN_DEPENDS=	x11/dmenu>=4.5

MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/bin" \
		MANDIR="${TRUEPREFIX}/man/man" \
		SHLIB_MAJOR=${LIBswmhack_VERSION:R} \
		SHLIB_MINOR=${LIBswmhack_VERSION:E}

NO_TEST=	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/spectrwm.{1,c}

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
